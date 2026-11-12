package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"os"
	"strings"
)

type Aluno struct {
	Nome  string
	Email string
}

func (a Aluno) String() string {
	return a.Nome + " <" + a.Email + ">"
}

type Notificador interface {
	Enviar(a Aluno, mensagem string) error
}

type Buscador interface {
	Buscar(nome string) (Aluno, error)
}

type NotificadorEmail struct {
	Remetente string
}

func NovoNotificadorEmail(remetente string) NotificadorEmail {
	return NotificadorEmail{Remetente: remetente}
}

func (e NotificadorEmail) Enviar(a Aluno, mensagem string) error {
	fmt.Printf("[e-mail de %s para %s] %s\n", e.Remetente, a.Email, mensagem)
	return nil
}

type NotificadorSMS struct{}

func (s NotificadorSMS) Enviar(a Aluno, mensagem string) error {
	fmt.Printf("[SMS para %s] %s\n", a.Nome, mensagem)
	return nil
}

type NotificadorMemoria struct {
	Enviadas []string
}

func (m *NotificadorMemoria) Enviar(a Aluno, mensagem string) error {
	m.Enviadas = append(m.Enviadas, a.Nome+": "+mensagem)
	return nil
}

type ListaDeAlunos struct {
	alunos []Aluno
}

func (l ListaDeAlunos) Buscar(nome string) (Aluno, error) {
	for _, a := range l.alunos {
		if a.Nome == nome {
			return a, nil
		}
	}
	return Aluno{}, errors.New("aluno não encontrado: " + nome)
}

func avisarAluno(b Buscador, n Notificador, nome, mensagem string) error {
	a, err := b.Buscar(nome)
	if err != nil {
		return err
	}
	return n.Enviar(a, mensagem)
}

func lerNomes(r io.Reader) ([]string, error) {
	var nomes []string
	scanner := bufio.NewScanner(r)
	for scanner.Scan() {
		nomes = append(nomes, scanner.Text())
	}
	return nomes, scanner.Err()
}

func descrever(n Notificador) string {
	switch c := n.(type) {
	case NotificadorEmail:
		return "e-mail de " + c.Remetente
	case NotificadorSMS:
		return "SMS"
	case *NotificadorMemoria:
		return fmt.Sprintf("memória (%d mensagens)", len(c.Enviadas))
	default:
		return "canal desconhecido"
	}
}

func mostrar(v any) {
	if s, ok := v.(fmt.Stringer); ok {
		fmt.Println("tem String():", s.String())
		return
	}
	fmt.Println("não tem String():", v)
}

func main() {
	lista := ListaDeAlunos{alunos: []Aluno{
		{Nome: "Ana", Email: "ana@exemplo.com"},
		{Nome: "Bruno", Email: "bruno@exemplo.com"},
	}}
	email := NovoNotificadorEmail("secretaria@exemplo.com")

	if err := avisarAluno(lista, email, "Ana", "Sua matrícula foi confirmada."); err != nil {
		fmt.Println("Erro:", err)
	}
	if err := avisarAluno(lista, email, "Carla", "Sua matrícula foi confirmada."); err != nil {
		fmt.Println("Erro:", err)
	}

	nomes, err := lerNomes(strings.NewReader("Ana\nBruno\nCarla\n"))
	fmt.Println(nomes, err)

	arquivo, err := os.Open("turma.txt")
	if err != nil {
		fmt.Println("Erro:", err)
		return
	}
	nomes, err = lerNomes(arquivo)
	arquivo.Close()
	fmt.Println(nomes, err)

	var n Notificador = email
	e, ok := n.(NotificadorEmail)
	fmt.Println(e.Remetente, ok)
	s, ok := n.(NotificadorSMS)
	fmt.Println(s, ok)

	memoria := &NotificadorMemoria{}
	memoria.Enviar(Aluno{Nome: "Ana"}, "Aula às 19h.")
	memoria.Enviar(Aluno{Nome: "Bruno"}, "Aula às 19h.")
	canais := []Notificador{email, NotificadorSMS{}, memoria}
	for _, c := range canais {
		fmt.Println(descrever(c))
	}

	mostrar(Aluno{Nome: "Ana", Email: "ana@exemplo.com"})
	mostrar(42)
}

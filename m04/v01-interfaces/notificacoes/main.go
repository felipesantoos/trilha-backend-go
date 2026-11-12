package main

import (
	"errors"
	"fmt"
)

type Aluno struct {
	Nome     string
	Email    string
	Telefone string
}

type Notificador interface {
	Enviar(a Aluno, mensagem string) error
}

type NotificadorEmail struct {
	Remetente string
}

func (e NotificadorEmail) Enviar(a Aluno, mensagem string) error {
	if a.Email == "" {
		return fmt.Errorf("%s não tem e-mail", a.Nome)
	}
	fmt.Printf("[e-mail de %s para %s] %s\n", e.Remetente, a.Email, mensagem)
	return nil
}

type NotificadorSMS struct{}

func (s NotificadorSMS) Enviar(a Aluno, mensagem string) error {
	if a.Telefone == "" {
		return errors.New(a.Nome + " não tem telefone")
	}
	fmt.Printf("[SMS para %s] %s\n", a.Telefone, mensagem)
	return nil
}

type NotificadorMemoria struct {
	Enviadas []string
}

func (m *NotificadorMemoria) Enviar(a Aluno, mensagem string) error {
	m.Enviadas = append(m.Enviadas, a.Nome+": "+mensagem)
	return nil
}

var _ Notificador = NotificadorEmail{}
var _ Notificador = NotificadorSMS{}
var _ Notificador = &NotificadorMemoria{}

func avisarTurma(n Notificador, turma []Aluno, mensagem string) {
	for _, a := range turma {
		if err := n.Enviar(a, mensagem); err != nil {
			fmt.Println("Erro:", err)
		}
	}
}

func main() {
	turma := []Aluno{
		{Nome: "Ana", Email: "ana@exemplo.com", Telefone: "11 99999-0000"},
		{Nome: "Bruno", Telefone: "11 98888-0000"},
	}

	email := NotificadorEmail{Remetente: "secretaria@exemplo.com"}
	avisarTurma(email, turma, "A aula de amanhã começa às 19h.")
	avisarTurma(NotificadorSMS{}, turma, "Aula às 19h.")

	memoria := &NotificadorMemoria{}
	avisarTurma(memoria, turma, "Aula às 19h.")
	fmt.Println(memoria.Enviadas)

	canais := []Notificador{email, NotificadorSMS{}}
	for _, n := range canais {
		avisarTurma(n, turma[:1], "Notas lançadas.")
	}
}

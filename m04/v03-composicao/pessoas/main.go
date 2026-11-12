package main

import (
	"errors"
	"fmt"
)

type Pessoa struct {
	Nome  string
	Email string
}

func (p Pessoa) Contato() string {
	return p.Nome + " <" + p.Email + ">"
}

func (p Pessoa) Apresentar() string {
	return "Olá, eu sou " + p.Nome + ". Contato: " + p.Contato()
}

type Aluno struct {
	Pessoa
	Matricula int
}

type Professor struct {
	Pessoa
	Disciplina string
}

func (p Professor) Contato() string {
	return p.Pessoa.Contato() + " (" + p.Disciplina + ")"
}

type Contatavel interface {
	Contato() string
}

type Buscador interface {
	Buscar(nome string) (Aluno, error)
}

type Gravador interface {
	Gravar(a Aluno) error
}

type Registro interface {
	Buscador
	Gravador
}

type ListaDeAlunos struct {
	alunos []Aluno
}

func (l *ListaDeAlunos) Buscar(nome string) (Aluno, error) {
	for _, a := range l.alunos {
		if a.Nome == nome {
			return a, nil
		}
	}
	return Aluno{}, errors.New("aluno não encontrado: " + nome)
}

func (l *ListaDeAlunos) Gravar(a Aluno) error {
	l.alunos = append(l.alunos, a)
	return nil
}

func matricular(r Registro, a Aluno) error {
	if _, err := r.Buscar(a.Nome); err == nil {
		return errors.New(a.Nome + " já está matriculada")
	}
	return r.Gravar(a)
}

func main() {
	ana := Aluno{
		Pessoa:    Pessoa{Nome: "Ana", Email: "ana@exemplo.com"},
		Matricula: 1001,
	}
	rui := Professor{
		Pessoa:     Pessoa{Nome: "Rui", Email: "rui@exemplo.com"},
		Disciplina: "Go",
	}

	fmt.Println(ana.Nome, ana.Matricula)
	fmt.Println(ana.Contato())
	fmt.Println(ana.Pessoa.Nome)

	ana.Email = "ana.souza@exemplo.com"
	fmt.Println(ana.Contato())

	fmt.Println(rui.Contato())
	fmt.Println(rui.Apresentar())

	contatos := []Contatavel{ana, rui}
	for _, c := range contatos {
		fmt.Println(c.Contato())
	}

	lista := &ListaDeAlunos{}
	fmt.Println(matricular(lista, ana))
	fmt.Println(matricular(lista, ana))
}

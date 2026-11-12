package main

import (
	"errors"
	"fmt"
)

type Aluno struct {
	Nome      string
	Matricula int
	Apelido   *string
	Telefone  *string
	Nota      float64
}

type Cadastro struct {
	alunos  map[int]*Aluno
	proxima int
}

func NovoCadastro() *Cadastro {
	return &Cadastro{alunos: make(map[int]*Aluno), proxima: 1001}
}

func (c *Cadastro) Adicionar(nome string) *Aluno {
	a := &Aluno{Nome: nome, Matricula: c.proxima}
	c.alunos[a.Matricula] = a
	c.proxima++
	return a
}

func (c *Cadastro) Buscar(matricula int) (*Aluno, bool) {
	a, ok := c.alunos[matricula]
	return a, ok
}

func (c *Cadastro) LancarNota(matricula int, nota float64) error {
	a, ok := c.alunos[matricula]
	if !ok {
		return errors.New("matrícula não encontrada")
	}
	a.Nota = nota
	return nil
}

func (c *Cadastro) Todos() []*Aluno {
	var todos []*Aluno
	for _, a := range c.alunos {
		todos = append(todos, a)
	}
	return todos
}

func (c *Cadastro) PontoExtra() {
	for _, a := range c.Todos() {
		a.Nota += 1
	}
}

func nomeDeExibicao(a *Aluno) string {
	if a.Apelido != nil {
		return *a.Apelido
	}
	return a.Nome
}

func telefone(a *Aluno) string {
	if a.Telefone == nil {
		return "não informado"
	}
	return *a.Telefone
}

func main() {
	c := NovoCadastro()
	ana := c.Adicionar("Ana Souza")
	bruno := c.Adicionar("Bruno Lima")

	apelido := "Bru"
	bruno.Apelido = &apelido
	ana.Telefone = new("11 99999-0000")

	if err := c.LancarNota(1001, 8.5); err != nil {
		fmt.Println("Erro:", err)
	}
	if err := c.LancarNota(9999, 7); err != nil {
		fmt.Println("Erro:", err)
	}

	if a, ok := c.Buscar(1002); ok {
		a.Nota = 6
	}

	c.PontoExtra()

	fmt.Println(ana.Matricula, nomeDeExibicao(ana), ana.Nota, telefone(ana))
	fmt.Println(bruno.Matricula, nomeDeExibicao(bruno), bruno.Nota, telefone(bruno))
	fmt.Println("alunos no cadastro:", len(c.Todos()))
}

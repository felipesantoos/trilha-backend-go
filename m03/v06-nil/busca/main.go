package main

import (
	"errors"
	"fmt"
)

type Aluno struct {
	Nome      string
	Matricula int
	Nota      float64
}

var ErrNaoEncontrado = errors.New("aluno não encontrado")

var alunos = []*Aluno{
	{Nome: "Ana", Matricula: 1001},
	{Nome: "Bruno", Matricula: 1002},
}

func buscar(matricula int) (*Aluno, error) {
	for _, a := range alunos {
		if a.Matricula == matricula {
			return a, nil
		}
	}
	return nil, ErrNaoEncontrado
}

func (a *Aluno) NomeOuPadrao() string {
	if a == nil {
		return "(sem aluno)"
	}
	return a.Nome
}

type Turma struct {
	Notas map[string]float64
}

func NovaTurma() *Turma {
	return &Turma{Notas: make(map[string]float64)}
}

func main() {
	var vazio *Aluno
	fmt.Println(vazio == nil, vazio)

	for _, m := range []int{1001, 1003} {
		a, err := buscar(m)
		if err != nil {
			fmt.Println(m, "->", err)
			continue
		}
		fmt.Println(m, "->", a.Nome)
	}

	fmt.Println(vazio.NomeOuPadrao())

	porMatricula := map[int]*Aluno{1001: alunos[0]}
	if a, ok := porMatricula[9999]; ok {
		a.Nota = 7
	} else {
		fmt.Println("9999 -> matrícula não encontrada")
	}

	t := NovaTurma()
	t.Notas["Ana"] = 8.5
	fmt.Println(t.Notas)
}

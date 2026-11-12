package main

import (
	"errors"
	"fmt"
	"strings"
)

type Aluno struct {
	Nome      string
	Matricula int
	Email     string
	Notas     []float64
}

type Curso struct {
	Nome         string
	CargaHoraria int
	Alunos       []Aluno
}

func NovoAluno(nome, email string, matricula int) (Aluno, error) {
	nome = strings.TrimSpace(nome)
	if nome == "" {
		return Aluno{}, errors.New("o nome é obrigatório")
	}
	if !strings.Contains(email, "@") {
		return Aluno{}, fmt.Errorf("e-mail inválido: %q", email)
	}
	if matricula <= 0 {
		return Aluno{}, errors.New("a matrícula precisa ser positiva")
	}
	return Aluno{Nome: nome, Matricula: matricula, Email: email, Notas: []float64{}}, nil
}

func (a Aluno) Media() float64 {
	if len(a.Notas) == 0 {
		return 0
	}
	soma := 0.0
	for _, n := range a.Notas {
		soma += n
	}
	return soma / float64(len(a.Notas))
}

func (a Aluno) Situacao() string {
	m := a.Media()
	switch {
	case m >= 7:
		return "aprovado"
	case m >= 5:
		return "recuperação"
	default:
		return "reprovado"
	}
}

func (c Curso) String() string {
	return fmt.Sprintf("%s (%dh, %d alunos)", c.Nome, c.CargaHoraria, len(c.Alunos))
}

func main() {
	curso := Curso{Nome: "Backend em Go", CargaHoraria: 40}

	ana, err := NovoAluno("  Ana  ", "ana@exemplo.com", 1001)
	if err != nil {
		fmt.Println("Erro:", err)
		return
	}
	carla, err := NovoAluno("Carla", "carla@exemplo.com", 1003)
	if err != nil {
		fmt.Println("Erro:", err)
		return
	}
	if _, err := NovoAluno("Bruno", "bruno.exemplo.com", 1002); err != nil {
		fmt.Println("Erro:", err)
	}
	curso.Alunos = append(curso.Alunos, ana, carla)

	curso.Alunos[0].Notas = []float64{7, 8.5, 9}
	curso.Alunos[1].Notas = []float64{5, 6}

	fmt.Println(curso)
	for _, a := range curso.Alunos {
		fmt.Printf("%s: média %.2f, %s\n", a.Nome, a.Media(), a.Situacao())
	}
}

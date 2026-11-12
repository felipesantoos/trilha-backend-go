package main

import "fmt"

type Aluno struct {
	Nome      string
	Matricula int
	Email     string
	Notas     []float64
}

type Professor struct {
	Nome  string
	Email string
}

type Curso struct {
	Nome         string
	CargaHoraria int
	Professor    Professor
	Alunos       []Aluno
}

func main() {
	curso := Curso{
		Nome:         "Backend em Go",
		CargaHoraria: 40,
		Professor:    Professor{Nome: "Rita", Email: "rita@exemplo.com"},
		Alunos: []Aluno{
			{Nome: "Ana", Matricula: 1001, Email: "ana@exemplo.com", Notas: []float64{8.5, 9, 7}},
			{Nome: "Bruno", Matricula: 1002, Email: "bruno@exemplo.com", Notas: []float64{6, 7.5}},
		},
	}
	curso.Alunos = append(curso.Alunos, Aluno{Nome: "Carla", Matricula: 1003})
	fmt.Printf("%+v\n", curso)
	fmt.Println(curso.Professor.Email, len(curso.Alunos))

	soma := 0.0
	for _, nota := range curso.Alunos[0].Notas {
		soma += nota
	}
	fmt.Printf("Média de %s: %.2f\n", curso.Alunos[0].Nome, soma/float64(len(curso.Alunos[0].Notas)))

	// Atribuir copia: mudar a cópia não muda o original
	copia := curso.Alunos[1]
	copia.Nome = "Bruno Lima"
	fmt.Println(curso.Alunos[1].Nome, "|", copia.Nome)

	// Para mudar um elemento do slice, use o índice
	for i := range curso.Alunos {
		curso.Alunos[i].Email = fmt.Sprintf("aluno%d@exemplo.com", curso.Alunos[i].Matricula)
	}
	fmt.Println(curso.Alunos[2].Email)
}

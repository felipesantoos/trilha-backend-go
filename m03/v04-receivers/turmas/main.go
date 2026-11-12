package main

import (
	"errors"
	"fmt"
	"slices"
)

type Turma struct {
	Codigo string
	Vagas  int
	Alunos []string
}

func (t *Turma) Matricular(nome string) error {
	if t.Vagas == 0 {
		return errors.New("turma cheia")
	}
	t.Vagas--
	t.Alunos = append(t.Alunos, nome)
	return nil
}

func (t *Turma) Cancelar(nome string) error {
	i := slices.Index(t.Alunos, nome)
	if i == -1 {
		return fmt.Errorf("%s não está na turma", nome)
	}
	t.Alunos = slices.Delete(t.Alunos, i, i+1)
	t.Vagas++
	return nil
}

func (t *Turma) Total() int {
	return len(t.Alunos)
}

func adicionar(notas []float64, nota float64) []float64 {
	return append(notas, nota)
}

func main() {
	t := Turma{Codigo: "GO-01", Vagas: 2}
	for _, nome := range []string{"Ana", "Bruno", "Carla"} {
		if err := t.Matricular(nome); err != nil {
			fmt.Println(nome+":", err)
		}
	}
	fmt.Println(t.Alunos, "vagas:", t.Vagas, "total:", t.Total())

	if err := t.Cancelar("Bruno"); err != nil {
		fmt.Println(err)
	}
	if err := t.Cancelar("Diego"); err != nil {
		fmt.Println(err)
	}
	fmt.Println(t.Alunos, "vagas:", t.Vagas)

	notas := []float64{7, 8, 9}
	notas = adicionar(notas, 10)
	fmt.Println(notas)

	// Map de turmas: guarde ponteiros para poder chamar os métodos
	turmas := map[string]*Turma{
		"GO-01": {Codigo: "GO-01", Vagas: 2},
		"GO-02": {Codigo: "GO-02", Vagas: 1},
	}
	turmas["GO-02"].Matricular("Eva")
	fmt.Println(turmas["GO-02"].Alunos, "vagas:", turmas["GO-02"].Vagas)
}

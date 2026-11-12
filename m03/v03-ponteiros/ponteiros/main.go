package main

import (
	"fmt"
	"unsafe"
)

type Aluno struct {
	Nome   string
	Nota   float64
	Faltas int
}

type Turma struct {
	Codigo string
	Notas  [1000]float64
}

// Sem ponteiro: a função recebe uma cópia, e a mudança se perde.
func lancarNotaNaCopia(a Aluno, nota float64) {
	a.Nota = nota
}

// Com ponteiro: a função recebe o endereço e altera o original.
func lancarNota(a *Aluno, nota float64) {
	a.Nota = nota
}

func incrementar(n *int) {
	*n = *n + 1
}

func main() {
	ana := Aluno{Nome: "Ana"}
	lancarNotaNaCopia(ana, 9)
	fmt.Println("sem ponteiro:", ana.Nota)

	lancarNota(&ana, 9)
	fmt.Println("com ponteiro:", ana.Nota)

	incrementar(&ana.Faltas)
	incrementar(&ana.Faltas)
	fmt.Println("faltas:", ana.Faltas)

	vagas := 20
	p := &vagas
	*p = 25
	fmt.Println(vagas, *p, p)
	fmt.Printf("%T\n", p)

	var t Turma
	fmt.Println(unsafe.Sizeof(t), unsafe.Sizeof(&t))
}

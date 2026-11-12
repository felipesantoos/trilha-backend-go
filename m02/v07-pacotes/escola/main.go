package main

import (
	"fmt"

	"github.com/ana/escola/alunos"
	"github.com/ana/escola/notas"
	"github.com/google/uuid"
)

func main() {
	nome := alunos.NomeCompleto("Ana", "Souza")
	m := notas.Media(7, 8.5, 9)
	fmt.Printf("%s: média %.2f, %s, conceito %s\n", nome, m, notas.Situacao(m), notas.Conceito(m))
	fmt.Println("Mínimo para passar:", notas.NotaMinima)

	matricula := uuid.New()
	fmt.Println("Matrícula com", len(matricula.String()), "caracteres")
}

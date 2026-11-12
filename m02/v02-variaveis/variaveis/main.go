package main

import (
	"fmt"
	"strconv"
)

const NotaMinima = 6.0

type Turno int

const (
	Manha Turno = iota
	Tarde
	Noite
)

func main() {
	nome := "Ana"
	idade := 20
	nota1, nota2, nota3 := 7.5, 8.0, 6.5

	media := (nota1 + nota2 + nota3) / 3
	fmt.Println(nome, idade)
	fmt.Printf("Média: %.2f\n", media)
	fmt.Println("Aprovada:", media >= NotaMinima)

	soma := 7 + 8 + 6
	fmt.Println("Média inteira:", soma/3)
	fmt.Printf("Média convertida: %.2f\n", float64(soma)/3)

	idadeTexto, err := strconv.Atoi("19")
	fmt.Println(idadeTexto, err)
	idadeTexto, err = strconv.Atoi("dezenove")
	fmt.Println(idadeTexto, err)

	nota := 8.9
	fmt.Println(int(nota), strconv.Itoa(65), string(rune(65)))
	fmt.Println(Manha, Tarde, Noite)
}

package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	nota := 8.0
	faltas := 6

	if nota >= 7 && faltas <= 10 {
		fmt.Println("Aprovado")
	} else if nota >= 5 && faltas <= 10 {
		fmt.Println("Recuperação")
	} else {
		fmt.Println("Reprovado")
	}

	switch {
	case nota >= 9:
		fmt.Println("Conceito A")
	case nota >= 7:
		fmt.Println("Conceito B")
	case nota >= 5:
		fmt.Println("Conceito C")
	default:
		fmt.Println("Conceito D")
	}

	if idade, err := strconv.Atoi("17"); err != nil {
		fmt.Println("idade inválida:", err)
	} else if idade < 18 {
		fmt.Println("Menor de idade: precisa de autorização")
	} else {
		fmt.Println("Pode se matricular")
	}

	soma, quantidade := 0, 0
	if quantidade > 0 && soma/quantidade >= 7 {
		fmt.Println("Média aprovada")
	} else {
		fmt.Println("Sem notas ainda")
	}

	dia := "Sábado"
	switch strings.ToLower(dia) {
	case "sábado", "domingo":
		fmt.Println("Fim de semana: sem aula")
	case "segunda":
		fmt.Println("Aula de Go")
	default:
		fmt.Println("Dia de estudar sozinho")
	}
}

package main

import "fmt"

func main() {
	// 1. Tabuada do 9 com o for clássico
	for i := 1; i <= 10; i++ {
		fmt.Println("9 x", i, "=", 9*i)
	}

	// 2. Média de uma lista com for range, += e len
	notas := []float64{7, 8.5, 9, 6}
	soma := 0.0
	for _, nota := range notas {
		soma += nota
	}
	fmt.Printf("Média: %.2f\n", soma/float64(len(notas)))

	// 3. De 1 a 30, pulando os múltiplos de 3
	for numero := 1; numero <= 30; numero++ {
		if numero%3 == 0 {
			continue
		}
		fmt.Print(numero, " ")
	}
	fmt.Println()

	// 4. Inscrições numa turma com 5 vagas, com o for como while
	vagas := 5
	inscritos := 0
	for inscritos < vagas {
		inscritos++
		fmt.Println("Inscrição", inscritos, "confirmada")
	}
	fmt.Println("Turma cheia")

	// 6. Voltas do range × len de um texto com acento
	nome := "João"
	voltas := 0
	for posicao, letra := range nome {
		fmt.Print(posicao, string(letra), " ")
		voltas++
	}
	fmt.Println()
	fmt.Println("Voltas:", voltas, "len:", len(nome))
}

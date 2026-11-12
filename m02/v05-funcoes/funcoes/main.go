package main

import (
	"errors"
	"fmt"
)

func situacao(media float64) string {
	if media >= 7 {
		return "Aprovado"
	} else if media >= 5 {
		return "Recuperação"
	}
	return "Reprovado"
}

func mediaDasNotas(notas []float64) (float64, error) {
	if len(notas) == 0 {
		return 0, errors.New("a lista de notas está vazia")
	}
	soma := 0.0
	for _, nota := range notas {
		soma += nota
	}
	return soma / float64(len(notas)), nil
}

func validarNota(nota float64) error {
	if nota < 0 || nota > 10 {
		return fmt.Errorf("nota inválida: %.1f (deve ficar entre 0 e 10)", nota)
	}
	return nil
}

func novoGeradorDeMatriculas(inicio int) func() int {
	proxima := inicio
	return func() int {
		matricula := proxima
		proxima++
		return matricula
	}
}

func main() {
	notas := []float64{7, 8.5, 9, 6}
	media, err := mediaDasNotas(notas)
	if err != nil {
		fmt.Println("Erro:", err)
		return
	}
	fmt.Printf("Média: %.2f (%s)\n", media, situacao(media))

	if _, err := mediaDasNotas([]float64{}); err != nil {
		fmt.Println("Erro:", err)
	}

	if err := validarNota(12); err != nil {
		fmt.Println("Erro:", err)
	}

	proximaMatricula := novoGeradorDeMatriculas(1000)
	fmt.Println(proximaMatricula(), proximaMatricula(), proximaMatricula())
}

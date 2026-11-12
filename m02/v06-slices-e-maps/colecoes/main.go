package main

import (
	"fmt"
	"maps"
	"slices"
)

func adicionarAluno(alunos []string, nome string) []string {
	return append(alunos, nome)
}

func main() {
	// 1. Slice com a turma, mais dois nomes com append
	alunos := []string{"Ana", "Bruno", "Carla"}
	alunos = append(alunos, "Diego")
	alunos = adicionarAluno(alunos, "Eva")
	fmt.Println(alunos, len(alunos))

	// 2. Os três primeiros com uma fatia
	fmt.Println(alunos[:3])

	// 3. Map de notas e a média da turma
	notas := map[string]float64{
		"Ana":   8.5,
		"Bruno": 7.5,
		"Carla": 9,
		"Diego": 6,
	}
	soma := 0.0
	for _, nota := range notas {
		soma += nota
	}
	fmt.Printf("Média da turma: %.2f\n", soma/float64(len(notas)))

	// 4. Aluno que não existe, com o comma ok
	if nota, ok := notas["Eva"]; ok {
		fmt.Println("Eva tirou", nota)
	} else {
		fmt.Println("Eva: aluno não encontrado")
	}

	// 5. Os nomes em ordem
	for _, nome := range slices.Sorted(maps.Keys(notas)) {
		fmt.Println(nome, notas[nome])
	}
}

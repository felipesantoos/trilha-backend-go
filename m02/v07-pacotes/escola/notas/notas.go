// Pacote notas calcula médias e a situação dos alunos.
package notas

const NotaMinima = 7.0

// Media devolve a média das notas, ou 0 se não houver notas.
func Media(valores ...float64) float64 {
	if len(valores) == 0 {
		return 0
	}
	soma := 0.0
	for _, v := range valores {
		soma += v
	}
	return soma / float64(len(valores))
}

// Situacao diz se o aluno foi aprovado.
func Situacao(media float64) string {
	if aprovado(media) {
		return "aprovado"
	}
	return "reprovado"
}

// Conceito devolve o conceito (A, B, C ou D) da média.
func Conceito(media float64) string {
	switch {
	case media >= 9:
		return "A"
	case media >= 7:
		return "B"
	case media >= 5:
		return "C"
	default:
		return "D"
	}
}

func aprovado(media float64) bool {
	return media >= NotaMinima
}

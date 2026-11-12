# Erros da aula (M02 · V05)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `argumentos-de-menos.go.txt` | `./main.go:10:23: not enough arguments in call to media` |
| `argumento-de-outro-tipo.go.txt` | `./main.go:14:23: cannot use n (variable of type int) as float64 value in argument to situacao` |
| `falta-return.go.txt` | `./main.go:11:1: missing return` |
| `funcao-sem-retorno-usada.go.txt` | `./main.go:10:7: saudar("Ana") (no value) used as value` |
| `um-valor-so.go.txt` | `./main.go:16:7: assignment mismatch: 1 variable but mediaDaTurma returns 2 values` |
| `erro-sem-conferir.go.txt` | `./main.go:9:5: declared and not used: err` |
| `funcao-dentro-do-main.go.txt` | `./main.go:6:7: syntax error: unexpected name saudar, expected (` |
| `parametro-e-copia.go.txt` | Compila e imprime `4`: o parâmetro é uma cópia |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

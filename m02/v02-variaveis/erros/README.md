# Erros da aula (M02 · V02)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .` (ou `go vet .`, no último):

| Arquivo | O que aparece |
|---|---|
| `redeclarar-com-dois-pontos-igual.go.txt` | `./main.go:7:7: no new variables on left side of :=` |
| `declaracao-curta-fora-da-funcao.go.txt` | `./main.go:5:1: syntax error: non-declaration statement outside function body` |
| `variavel-sem-uso.go.txt` | `./main.go:7:2: declared and not used: nota` |
| `float-em-int.go.txt` | `./main.go:7:24: cannot use nota (variable of type float64) as int value in variable declaration` |
| `tipos-misturados.go.txt` | `./main.go:8:14: invalid operation: soma / nota (mismatched types int and float64)` |
| `verbo-errado-no-printf.go.txt` | Roda, mas escreve `%!f(int=07)` |
| `alterar-constante.go.txt` | `./main.go:8:2: cannot assign to NotaMinima (neither addressable nor a map index expression)` |
| `string-de-numero.go.txt` | Roda e escreve `A`; o `go vet .` avisa: `conversion from int to string yields a string of one rune, not a string of digits` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

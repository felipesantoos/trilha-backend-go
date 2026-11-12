# Erros da aula (M02 · V03)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `atribuicao-no-if.go.txt` | `./main.go:7:10: syntax error: cannot use assignment nota = 7 as value` |
| `else-na-linha-de-baixo.go.txt` | `./main.go:11:2: syntax error: unexpected keyword else, expected }` |
| `if-sem-chaves.go.txt` | `./main.go:7:15: syntax error: unexpected name fmt, expected {` |
| `variavel-fora-do-if.go.txt` | `./main.go:12:14: undefined: idade` |
| `case-duplicado.go.txt` | `./main.go:10:7: duplicate case "sábado" (constant of type string) in expression switch` |
| `case-de-outro-tipo.go.txt` | `./main.go:8:7: cannot convert 7 (untyped int constant) to type string` |
| `divisao-por-zero.go.txt` | Compila, mas para com `panic: runtime error: integer divide by zero` |
| `maiuscula-no-switch.go.txt` | Compila, mas escreve "Dia de estudar sozinho": `"Sábado"` não combina com `"sábado"` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

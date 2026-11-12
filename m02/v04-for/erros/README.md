# Erros da aula (M02 · V04)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `indice-sem-uso.go.txt` | `./main.go:7:6: declared and not used: indice` |
| `parenteses-no-for.go.txt` | `./main.go:6:9: syntax error: unexpected :=, expected )` |
| `while-nao-existe.go.txt` | `./main.go:7:8: syntax error: unexpected name i at end of statement` |
| `media-com-len.go.txt` | `./main.go:11:14: invalid operation: soma / len(notas) (mismatched types float64 and int)` |
| `break-no-switch.go.txt` | Compila, mas o laço só para na tentativa 5: o `break` do `case` sai só do `switch` |
| `laco-sem-fim.go.txt` | Compila e escreve "9 x 1 = 9" sem parar (falta o `i++`). Pare com `Ctrl+C` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

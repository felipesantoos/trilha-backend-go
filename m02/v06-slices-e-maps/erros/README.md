# Erros da aula (M02 · V06)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `indice-fora-do-slice.go.txt` | Compila, mas para com `panic: runtime error: index out of range [5] with length 3` |
| `indice-fora-do-array.go.txt` | `./main.go:7:9: invalid argument: index 3 out of bounds [0:3]` |
| `append-sem-guardar.go.txt` | `./main.go:7:2: append(alunos, "Eva") (value of type []string) is not used` |
| `map-nil.go.txt` | Compila, mas para com `panic: assignment to entry in nil map` |
| `chave-de-outro-tipo.go.txt` | `./main.go:7:20: cannot use 1 (untyped int constant) as string value in map index` |
| `fatia-muda-original.go.txt` | Compila e imprime `[ANA Bruno Carla Diego Eva]`: a fatia mudou o original |
| `range-nao-altera.go.txt` | Compila e imprime `[7 8 9]`: a variável do `range` é uma cópia |
| `append-na-funcao.go.txt` | Compila e imprime `[2 4]`: o `append` dentro da função se perdeu |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

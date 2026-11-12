# Erros da aula (M03 · V04)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `receiver-de-valor.go.txt` | Compila e imprime `no main, vagas: 2`: o método mudou uma cópia |
| `metodo-de-ponteiro-num-literal.go.txt` | `./main.go:24:18: cannot call pointer method Matricular on Turma` |
| `metodo-de-ponteiro-no-map.go.txt` | `./main.go:25:18: cannot call pointer method Matricular on Turma` |
| `campo-no-map.go.txt` | `./main.go:25:2: cannot assign to struct field turmas["GO-01"].Vagas in map` |
| `range-chama-na-copia.go.txt` | Compila e imprime `[] []`: o método alterou a cópia da volta |
| `append-sem-devolver.go.txt` | Compila e imprime `[7 8 9]`: o `append` se perdeu na função |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

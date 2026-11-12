# Erros da aula (M03 · V05)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `sem-construtor.go.txt` | `panic: assignment to entry in nil map`, em `main.go:18` (dentro de `Adicionar`) |
| `buscar-devolve-copia.go.txt` | Compila e imprime `na busca: 9` e `no cadastro: 0`: a busca devolveu uma cópia |
| `ponteiro-antes-do-append.go.txt` | Compila e imprime `ana: 10` e `turma: [{Ana 6} {Bruno 5}]`: o `append` trocou de array |
| `map-sem-ponteiro.go.txt` | `./main.go:23:2: cannot assign to struct field c.alunos[matricula].Nota in map` |
| `endereco-de-texto.go.txt` | `./main.go:12:19: invalid operation: cannot take address of "Bru" (untyped string constant)` |
| `apelido-nil.go.txt` | `panic: runtime error: invalid memory address or nil pointer dereference`, em `main.go:12` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

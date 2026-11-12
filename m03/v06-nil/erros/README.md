# Erros da aula (M03 · V06)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `buscar-devolve-nil.go.txt` | `Olá, Ana` e depois `panic: … nil pointer dereference`, em `main.go:25` (chamado de `main.go:30`) |
| `map-de-ponteiros.go.txt` | `<nil>` e depois `panic: … nil pointer dereference`, em `main.go:16` |
| `erro-sem-return.go.txt` | `Erro: aluno não encontrado` e depois `panic: … nil pointer dereference`, em `main.go:27` |
| `receiver-nil.go.txt` | `panic: … nil pointer dereference`, com a pilha começando em `main.(*Aluno).NomeOuPadrao(...)` |
| `map-nil-na-struct.go.txt` | `panic: assignment to entry in nil map`, em `main.go:9` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

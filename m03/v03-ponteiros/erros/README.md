# Erros da aula (M03 · V03)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `mudanca-sumiu.go.txt` | Compila e imprime `no main: 0`: a função mudou uma cópia |
| `esqueceu-o-e-comercial.go.txt` | `./main.go:16:13: cannot use ana (variable of struct type Aluno) as *Aluno value in argument to lancarNota` |
| `asterisco-em-nao-ponteiro.go.txt` | `./main.go:7:15: invalid operation: cannot indirect vagas (variable of type int)` |
| `endereco-de-numero.go.txt` | `./main.go:6:8: invalid operation: cannot take address of 20 (untyped int constant)` |
| `esqueceu-o-asterisco.go.txt` | `./main.go:8:6: cannot use 25 (untyped int constant) as *int value in assignment` |
| `aritmetica-de-ponteiro.go.txt` | `./main.go:8:14: invalid operation: p + 1 (mismatched types *int and untyped int)` |
| `ponteiro-nil.go.txt` | Compila, imprime `<nil>` e para com `panic: runtime error: invalid memory address or nil pointer dereference` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

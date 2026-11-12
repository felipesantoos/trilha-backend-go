# Erros da aula (M04 · V02)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `interface-grande.go.txt` | `./main.go:44:22: cannot use lista … ListaDeAlunos does not implement Cadastro (missing method Adicionar)` |
| `construtor-devolve-interface.go.txt` | `./main.go:36:20: canal.Remetente undefined (type Notificador has no field or method Remetente)` |
| `assercao-sem-ok.go.txt` | `panic: interface conversion: main.Notificador is main.NotificadorEmail, not main.NotificadorSMS`, em `main.go:32` |
| `assercao-fora-de-interface.go.txt` | `./main.go:32:11: invalid operation: email (variable of struct type NotificadorEmail) is not an interface` |
| `case-sem-ponteiro.go.txt` | `./main.go:43:7: impossible type switch case: NotificadorMemoria`, com `(method Enviar has pointer receiver)` na linha de baixo |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

# Erros da aula (M04 · V01)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `falta-o-metodo.go.txt` | `./main.go:23:22: cannot use NotificadorSMS{} … NotificadorSMS does not implement Notificador (missing method Enviar)` |
| `assinatura-diferente.go.txt` | `./main.go:23:22: … (wrong type for method Enviar)`, com `have Enviar(Aluno) error` e `want Enviar(Aluno, string) error` |
| `metodo-minusculo.go.txt` | `./main.go:23:22: … (missing method Enviar)`, com `have enviar(Aluno, string) error` e `want Enviar(Aluno, string) error` |
| `receiver-de-ponteiro.go.txt` | `./main.go:30:9: cannot use memoria … NotificadorMemoria does not implement Notificador (method Enviar has pointer receiver)` |
| `campo-pela-interface.go.txt` | `./main.go:26:16: n.Remetente undefined (type Notificador has no field or method Remetente)` |
| `interface-nil.go.txt` | `true` e depois `panic: … nil pointer dereference`, em `main.go:16` (o `n.Enviar`) |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

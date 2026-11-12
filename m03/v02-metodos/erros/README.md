# Erros da aula (M03 · V02)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .` (e `go vet .` nos que compilam):

| Arquivo | O que aparece |
|---|---|
| `metodo-minusculo.go.txt` | `./main.go:16:18: ana.media undefined (type Aluno has no field or method media, but does have method Media)` |
| `metodo-em-tipo-de-fora.go.txt` | `./main.go:5:9: cannot define new methods on non-local type string` |
| `campo-e-metodo-com-mesmo-nome.go.txt` | `./main.go:10:16: field and method with the same name Media` |
| `metodo-duplicado.go.txt` | `./main.go:13:16: method Aluno.Media already declared at ./main.go:9:16` |
| `metodo-sem-parenteses.go.txt` | Compila e imprime `%!f(func() float64=0x…)`; o `go vet .` avisa `arg ana.Media is a func value, not called` |
| `string-recursivo.go.txt` | Compila e cai com `fatal error: stack overflow`; o `go vet .` avisa `causes recursive (modelagem.Curso).String method call` |
| `receiver-de-valor-nao-altera.go.txt` | Compila e imprime `Ana`: o receiver de valor é uma cópia |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

# Erros da aula (M02 · V07)

Os dois primeiros são um `main.go` com erro: copie por cima do `main.go` do projeto `escola` e rode `go run .`. Os outros se reproduzem mexendo no projeto, como descrito.

| Como reproduzir | O que aparece |
|---|---|
| `nome-nao-exportado.go.txt` | `./main.go:12:20: name aprovado not exported by package notas` |
| `import-sem-modulo.go.txt` | `main.go:6:2: package escola/notas is not in std (/usr/local/go/src/escola/notas)` |
| Num projeto sem o `uuid` no `go.mod`, importe `github.com/google/uuid` | `no required module provides package github.com/google/uuid; to add it: go get github.com/google/uuid` |
| Crie `notas/extra.go` só com `package main` | `found packages main (extra.go) and notas (notas.go) in …/escola/notas` |
| Troque `package notas` por `package nota` em `notas/notas.go` | `"github.com/ana/escola/notas" imported as nota and not used` e `undefined: notas` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

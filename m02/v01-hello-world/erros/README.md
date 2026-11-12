# Erros do compilador (M02 · V01)

Cada arquivo é o `main.go` do `boas-vindas` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` e rode `go run .`:

```bash
cp ../erros/chave-na-linha-de-baixo.go.txt main.go
go run .
```

| Arquivo | Mensagem |
|---|---|
| `chave-na-linha-de-baixo.go.txt` | `./main.go:6:1: syntax error: unexpected semicolon or newline before {` |
| `println-minusculo.go.txt` | `./main.go:6:6: undefined: fmt.println (but have Println)` |
| `import-sem-uso.go.txt` | `./main.go:5:2: "os" imported and not used` |
| `pacote-que-nao-e-main.go.txt` | `package boas-vindas is not a main package` |
| `sem-funcao-main.go.txt` | `runtime.main_main·f: function main is undeclared in the main package` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros. Depois, volte o `main.go` original (`git checkout main.go`, ou copie de novo da pasta `boas-vindas`).

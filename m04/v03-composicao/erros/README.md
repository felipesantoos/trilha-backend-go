# Erros da aula (M04 · V03)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `aluno-nao-e-pessoa.go.txt` | `./main.go:25:9: cannot use ana (variable of struct type Aluno) as Pessoa value in argument to saudar` |
| `seletor-ambiguo.go.txt` | `./main.go:32:16: ambiguous selector m.Nome` |
| `interface-composta.go.txt` | `./main.go:45:25: cannot use SoLeitura{} … SoLeitura does not implement Registro (missing method Gravar)` |
| `campo-promovido-no-literal.go.txt` | Com `go 1.27` ou mais novo no `go.mod`, compila e imprime `Ana <ana@exemplo.com>`. Com `go 1.26` no `go.mod`, dá `use of promoted field Pessoa.Nome in struct literal of type Aluno requires go1.27 or later`; com o Go 1.26 instalado, `unknown field Nome in struct literal of type Aluno` |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

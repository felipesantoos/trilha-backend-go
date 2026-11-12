# Erros da aula (M03 · V01)

Cada arquivo é um `main.go` com um erro. Para ver a mensagem, copie um deles por cima do `main.go` de um projeto de teste e rode `go run .`:

| Arquivo | O que aparece |
|---|---|
| `valores-de-menos.go.txt` | `./main.go:13:30: too few values in struct literal of type Aluno` |
| `campo-que-nao-existe.go.txt` | `./main.go:13:28: unknown field Email in struct literal of type Aluno` |
| `valor-de-outro-tipo.go.txt` | `./main.go:13:39: cannot use "1001" (untyped string constant) as int value in struct literal` |
| `ler-campo-que-nao-existe.go.txt` | `./main.go:14:18: ana.Idade undefined (type Aluno has no field or method Idade)` |
| `falta-virgula.go.txt` | `./main.go:15:12: syntax error: unexpected newline in composite literal; possibly missing comma or }` |
| `comparar-com-slice.go.txt` | `./main.go:13:14: invalid operation: a == b (struct containing []string cannot be compared)` |
| `copia-nao-muda-original.go.txt` | Compila e imprime `8.5 10`: atribuir copia a struct |
| `range-nao-altera.go.txt` | Compila e imprime as notas originais: a variável do `range` é uma cópia |

Os arquivos terminam em `.txt` para o editor não marcar o repositório com erros.

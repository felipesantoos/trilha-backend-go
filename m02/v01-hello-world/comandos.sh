#!/usr/bin/env bash
# M02 · V01 — Por que Go? Hello world e go mod
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta boas-vindas/ tem o projeto pronto; a pasta erros/ tem o main.go com cada erro.

# --- Criar o módulo ---
mkdir -p ~/trilha-backend/projetos/boas-vindas
cd ~/trilha-backend/projetos/boas-vindas
go mod init boas-vindas
cat go.mod
code .                  # escreva o main.go (igual ao da pasta boas-vindas/)

# --- Rodar na hora e gerar o executável ---
go run .
go build                # não mostra nada quando dá certo
ls                      # boas-vindas  go.mod  main.go
./boas-vindas
boas-vindas             # sem o ./: command not found

# --- Os erros do compilador: um por vez (ou edite no VS Code), voltando o main.go certo depois ---
# A pasta erros/ tem cada versão quebrada, para comparar.
cp main.go main.go.certo
sed -i 's/^func main() {$/func main()\n{/' main.go && go run .           # chave na linha de baixo
cp main.go.certo main.go
sed -i '6s/Println/println/' main.go && go run .                         # println minúsculo
cp main.go.certo main.go
sed -i 's/^import "fmt"$/import (\n\t"fmt"\n\t"os"\n)/' main.go && go run .   # import sem uso
cp main.go.certo main.go
sed -i 's/^package main/package ola/' main.go && go run .                # pacote que não é main
cp main.go.certo main.go
sed -i 's/^func main/func inicio/' main.go && go run .                   # sem função main
mv main.go.certo main.go

# --- Sem go.mod ---
mkdir -p /tmp/sem-modulo && cp main.go /tmp/sem-modulo/ && cd /tmp/sem-modulo
go run .                # go: go.mod file not found in current directory or any parent directory
go mod init sem-modulo
go run .

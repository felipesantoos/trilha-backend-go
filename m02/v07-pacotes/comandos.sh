#!/usr/bin/env bash
# M02 · V07 — Pacotes e módulos
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta escola/ tem a prática resolvida (pacotes notas e alunos, e a biblioteca uuid);
# a pasta erros/ tem os erros da aula.

mkdir -p ~/trilha-backend/projetos/escola/notas
cd ~/trilha-backend/projetos/escola
go mod init github.com/ana/escola
code .                  # escreva notas/notas.go e main.go (iguais aos da pasta escola/, sem o uuid)
go run .
find . -type f          # ./go.mod ./main.go ./notas/notas.go

# --- Biblioteca de terceiros: acrescente o import do uuid no main.go ---
go run .                # no required module provides package github.com/google/uuid
go get github.com/google/uuid
go run .
cat go.mod              # require … // indirect
go mod tidy
cat go.mod              # require … (sem o indirect)

# --- Tire o uso do uuid do main.go e arrume de novo ---
go mod tidy
cat go.mod              # a linha require sumiu

#!/usr/bin/env bash
# M04 · V03 — Composição: a "herança" do Go
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta pessoas/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/pessoas
cd ~/trilha-backend/projetos/pessoas
go mod init pessoas
code .                  # escreva o main.go (igual ao da pasta pessoas/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Ordem do vídeo: aluno-nao-e-pessoa, seletor-ambiguo, interface-composta.
# Depois, volte o main.go da prática.
go run .

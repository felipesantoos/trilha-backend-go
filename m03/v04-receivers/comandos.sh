#!/usr/bin/env bash
# M03 · V04 — Receivers de valor × de ponteiro
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta turmas/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/turmas
cd ~/trilha-backend/projetos/turmas
go mod init turmas
code .                  # escreva o main.go (igual ao da pasta turmas/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .

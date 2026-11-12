#!/usr/bin/env bash
# M02 · V04 — Laços de repetição: o for
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta lacos/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/lacos
cd ~/trilha-backend/projetos/lacos
go mod init lacos
code .                  # escreva o main.go (igual ao da pasta lacos/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. O laco-sem-fim não termina: pare com Ctrl+C. Depois, volte o main.go da prática.
go run .

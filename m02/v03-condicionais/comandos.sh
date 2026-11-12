#!/usr/bin/env bash
# M02 · V03 — Condicionais: if e switch
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta condicionais/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/condicionais
cd ~/trilha-backend/projetos/condicionais
go mod init condicionais
code .                  # escreva o main.go (igual ao da pasta condicionais/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .

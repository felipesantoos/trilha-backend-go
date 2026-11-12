#!/usr/bin/env bash
# M02 · V05 — Funções e múltiplos retornos
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta funcoes/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/funcoes
cd ~/trilha-backend/projetos/funcoes
go mod init funcoes
code .                  # escreva o main.go (igual ao da pasta funcoes/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .

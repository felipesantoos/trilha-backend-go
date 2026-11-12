#!/usr/bin/env bash
# M02 · V02 — Variáveis, tipos e constantes
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta variaveis/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/variaveis
cd ~/trilha-backend/projetos/variaveis
go mod init variaveis
code .                  # escreva o main.go (igual ao da pasta variaveis/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .
go vet .                # pega o string(numero), que compila mas está errado

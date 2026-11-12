#!/usr/bin/env bash
# M03 · V01 — Structs: modelando dados
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta modelagem/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.
# (O projeto não se chama "structs" porque esse é o nome de um pacote da biblioteca padrão.)

mkdir -p ~/trilha-backend/projetos/modelagem
cd ~/trilha-backend/projetos/modelagem
go mod init modelagem
code .                  # escreva o main.go (igual ao da pasta modelagem/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .

#!/usr/bin/env bash
# M03 · V03 — Ponteiros: passagem por valor × por referência
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta ponteiros/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/ponteiros
cd ~/trilha-backend/projetos/ponteiros
go mod init ponteiros
code .                  # escreva o main.go (igual ao da pasta ponteiros/)
go run .
go run .                # o endereço impresso muda a cada execução

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .

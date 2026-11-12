#!/usr/bin/env bash
# M03 · V05 — Ponteiros na prática
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta cadastro/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/cadastro
cd ~/trilha-backend/projetos/cadastro
go mod init cadastro
code .                  # escreva o main.go (igual ao da pasta cadastro/)
go run .

# --- Os bugs: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Ordem do vídeo: sem-construtor, buscar-devolve-copia, ponteiro-antes-do-append,
# endereco-de-texto, apelido-nil. Depois, volte o main.go da prática.
go run .

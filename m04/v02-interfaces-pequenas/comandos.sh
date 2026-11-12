#!/usr/bin/env bash
# M04 · V02 — Interfaces pequenas e type assertion
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta avisos/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/avisos
cd ~/trilha-backend/projetos/avisos
go mod init avisos
printf 'Ana\nBruno\nCarla\n' > turma.txt    # um nome por linha, lido pelo lerNomes
code .                  # escreva o main.go (igual ao da pasta avisos/)
go run .

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Ordem do vídeo: interface-grande, construtor-devolve-interface, assercao-sem-ok,
# case-sem-ponteiro. Depois, volte o main.go da prática.
go run .

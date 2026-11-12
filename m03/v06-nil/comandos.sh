#!/usr/bin/env bash
# M03 · V06 — nil e o panic mais comum do Go
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# A pasta busca/ tem a prática resolvida; a pasta erros/ tem um main.go para cada erro da aula.

mkdir -p ~/trilha-backend/projetos/busca
cd ~/trilha-backend/projetos/busca
go mod init busca
code .                  # comece pelo erros/buscar-devolve-nil.go.txt como main.go
go run .                # o panic: leia a primeira linha e as linhas do main.go
go vet .                # não reclama: o erro só aparece rodando

# --- Os outros erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Ordem do vídeo: map-de-ponteiros, erro-sem-return, receiver-nil.
go run .

# --- A prática resolvida: copie o main.go da pasta busca/ ---
go run .

#!/usr/bin/env bash
# M03 · V02 — Métodos
#
# Os comandos do vídeo, na ordem. Rode um por vez.
# Continua o projeto modelagem da M03 · V01. A pasta modelagem/ tem a prática resolvida;
# a pasta erros/ tem um main.go para cada erro da aula.

cd ~/trilha-backend/projetos/modelagem
code .                  # escreva os métodos e o construtor (igual ao da pasta modelagem/)
go run .
go vet .                # pega o método sem () e o String() recursivo

# --- Os erros: copie cada arquivo da pasta erros/ por cima do main.go (ou digite no VS Code) ---
# e rode de novo. Depois, volte o main.go da prática.
go run .
go vet .

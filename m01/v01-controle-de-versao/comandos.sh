#!/usr/bin/env bash
# M01 · V01 — Por que controle de versão
#
# Instalar (se preciso) e configurar o Git uma vez só. Rode um comando por vez.
# Troque o nome e o e-mail pelos seus.

# --- O Git já está instalado? ---
git --version
# Se aparecer "command not found":
#   Ubuntu e WSL:  sudo apt update && sudo apt install git
#   Mac:           o próprio git --version oferece instalar as ferramentas de linha de comando

# --- Quem é você (vai em cada commit) ---
git config --global user.name "Ana Souza"
git config --global user.email "ana@exemplo.com"
# O e-mail fica público nos repositórios públicos. Para escondê-lo, use o e-mail
# privado do GitHub (Settings → Emails → Keep my email addresses private), depois da M01 · V04.

# --- O editor das mensagens: o VS Code ---
git config --global core.editor "code --wait"

# --- O nome da branch principal ---
git config --global init.defaultBranch main

# --- Conferir tudo ---
git config --global --list

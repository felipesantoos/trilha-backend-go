#!/usr/bin/env bash
# M00 · V04 — Instalando Go e VS Code
#
# Os comandos do vídeo, na ordem. Rode um por vez, no terminal do Ubuntu (WSL) ou do Linux.
# No Mac, instale o Go pelo .pkg de https://go.dev/dl/ e pule para "VS Code".

# --- Baixar a versão mais recente do Go ---
cd ~
VERSAO=$(curl -fsSL "https://go.dev/VERSION?m=text" | head -n 1)
echo $VERSAO
curl -fsSLO "https://go.dev/dl/$VERSAO.linux-amd64.tar.gz"   # ARM (uname -m = aarch64)? troque por linux-arm64

# --- Instalar em /usr/local/go (apaga antes uma instalação antiga) ---
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "$VERSAO.linux-amd64.tar.gz"

# --- Colocar o Go (e as ferramentas do go install) no PATH ---
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> ~/.profile
source ~/.profile
go version
rm "$VERSAO.linux-amd64.tar.gz"

# --- VS Code: abrir a pasta do projeto ---
# No Mac, antes: Cmd+Shift+P → "Shell Command: Install 'code' command in PATH".
mkdir -p ~/trilha-backend/projetos/ola
cd ~/trilha-backend/projetos/ola
code .

# --- O primeiro programa (o main.go está na pasta ola/ deste repositório) ---
go mod init ola
go run .                # erro, se ainda não criou o main.go: no Go files in ...

#!/usr/bin/env bash
# M01 · V04 — GitHub: SSH, push e pull
#
# Continua do repositório cadastro-alunos (M01 · V02 e V03). Rode um comando por vez.
# Troque "ana" e o e-mail pelos seus. Os passos no site do GitHub estão nos comentários.

# --- 1. Criar a chave SSH (Enter aceita o local padrão; a senha é opcional) ---
ssh-keygen -t ed25519 -C "ana@exemplo.com"

# --- 2. Copiar a chave PÚBLICA (o arquivo .pub, nunca o outro) ---
cat ~/.ssh/id_ed25519.pub
# 3. No GitHub: foto → Settings → SSH and GPG keys → New SSH key → cole e salve.

# --- 4. Testar a conexão (na primeira vez, confira a impressão digital e digite yes) ---
ssh -T git@github.com
# GitHub ED25519: SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU
# Porta 22 bloqueada na sua rede? Copie o ssh-config-porta-443 desta pasta para ~/.ssh/config.

# --- 5. (Opcional) Esconder o e-mail: Settings → Emails → Keep my email addresses private ---
git config --global user.email "12345678+ana@users.noreply.github.com"

# --- Publicar: crie no GitHub o repositório cadastro-alunos VAZIO (sem README) ---
cd ~/trilha-backend/projetos/cadastro-alunos
git remote add origin git@github.com:ana/cadastro-alunos.git
git remote -v
git push -u origin main

# --- Sincronizar ---
git config --global pull.rebase false   # o pull junta com merge quando os dois lados andaram
git fetch
git status
git pull

# --- Clonar em outra pasta (dê outro nome se a pasta já existir) ---
cd ~/trilha-backend/projetos
git clone git@github.com:ana/cadastro-alunos.git cadastro-alunos-copia

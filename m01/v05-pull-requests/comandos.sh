#!/usr/bin/env bash
# M01 · V05 — Pull Requests e code review
#
# Continua do repositório cadastro-alunos (M01 · V02 a V04), já publicado no GitHub.
# Rode um comando por vez. Os passos no site do GitHub estão nos comentários.

cd ~/trilha-backend/projetos/cadastro-alunos

# --- O modelo de descrição de PR (o mesmo do .github/ desta pasta) ---
mkdir -p .github
printf '## O que muda\n- \n\n## Por quê\n\n\n## Como testar\n\n' > .github/pull_request_template.md
git add .github/pull_request_template.md
git commit -m "Adiciona o modelo de Pull Request"
git push

# --- Trabalhar numa branch e mandar para o GitHub ---
git switch main
git pull
git switch -c adiciona-eva
echo Eva >> alunos.txt
git commit -am "Adiciona a Eva"
git push -u origin adiciona-eva
# No GitHub: abra o link "Create a pull request…", confira base: main ← compare: adiciona-eva,
# preencha a descrição (o modelo já vem) e clique em Create pull request.

# --- Revisão: comentários e sugestões na aba Files changed ---
# Aceitou uma sugestão pelo site (Commit suggestion)? Traga o commit antes de continuar:
git pull

# --- Responder à revisão: commits novos na MESMA branch ---
git commit -am "Corrige o nome da Eva"
git push

# --- Depois do Merge pull request (e do Delete branch no GitHub) ---
git switch main
git pull
git branch -d adiciona-eva     # mesclado com Squash and merge? use -D

# --- PR num repositório que não é seu: o fork ---
# No GitHub: Fork → Create fork. Depois clone o SEU fork:
# git clone git@github.com:ana/exercicios.git
# cd exercicios
# git switch -c adiciona-ana
# git push -u origin adiciona-ana
# No GitHub: abra o PR com base repository = o original e head repository = o seu fork.

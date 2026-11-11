#!/usr/bin/env bash
# M01 · V07 — Gitflow: main, develop, feature, release e hotfix
#
# A prática da aula num repositório de teste, do zero. Rode um comando por vez.
# É a base da atividade "Simulando o Gitflow". As linhas de push só valem se o
# repositório estiver no GitHub (git remote add origin …, como na M01 · V04).

mkdir -p ~/trilha-backend/projetos/gitflow-teste
cd ~/trilha-backend/projetos/gitflow-teste
git init
echo "# Gitflow de teste" > README.md
git add README.md
git commit -m "Início do projeto"

# --- A develop: nasce da main uma vez só ---
git switch -c develop main
# git push -u origin develop

# --- feature: sai da develop e volta para a develop ---
git switch -c feature/listar-alunos develop
echo "Lista os alunos" > alunos.txt
git add alunos.txt
git commit -m "feat: lista os alunos"
git switch develop
git merge --no-ff feature/listar-alunos -m "Merge da feature/listar-alunos"
git branch -d feature/listar-alunos

# --- release: sai da develop, vai para a main (com tag) e volta para a develop ---
git switch -c release/1.0.0 develop
echo "1.0.0" > VERSION
git add VERSION
git commit -m "chore: versão 1.0.0"
git switch main
git merge --no-ff release/1.0.0 -m "Release 1.0.0"
git tag -a v1.0.0 -m "Versão 1.0.0"
git switch develop
git merge --no-ff release/1.0.0 -m "Traz a release 1.0.0 para a develop"
git branch -d release/1.0.0

# --- hotfix: sai da main e volta para a main (com tag) e para a develop ---
git switch -c hotfix/1.0.1 main
echo "1.0.1" > VERSION
echo "Corrige a contagem de alunos" >> alunos.txt
git commit -am "fix: contagem de alunos"
git switch main
git merge --no-ff hotfix/1.0.1 -m "Hotfix 1.0.1"
git tag -a v1.0.1 -m "Versão 1.0.1"
git switch develop
git merge --no-ff hotfix/1.0.1 -m "Traz o hotfix 1.0.1 para a develop"
git branch -d hotfix/1.0.1

# --- Conferir (o grafo fica cheio de barras cruzadas: é normal) ---
git tag
git log --oneline --graph --all

# --- Mandar tudo para o GitHub ---
# git push origin main develop
# git push --tags

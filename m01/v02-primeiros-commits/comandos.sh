#!/usr/bin/env bash
# M01 · V02 — Primeiros commits
#
# Os comandos da aula, na ordem. Rode um por vez.
# A pasta cadastro-alunos/ ao lado tem os arquivos como ficam no fim, para comparar.
# Um projeto, um repositório: não rode git init em ~/trilha-backend nem em projetos/.

# --- Criar o repositório ---
mkdir -p ~/trilha-backend/projetos/cadastro-alunos
cd ~/trilha-backend/projetos/cadastro-alunos
git init
git status

# --- Os primeiros arquivos e o primeiro commit ---
printf '# Cadastro de alunos\n\nLista simples dos alunos da turma de Go.\n' > README.md
printf 'Ana\nBruno\n' > alunos.txt
git status
git add README.md
git status
git add .
git commit -m "Primeira versão do cadastro"
git status

# --- Ver o que mudou e gravar ---
echo Carla >> alunos.txt   # ou escreva "Carla" numa linha nova pelo VS Code
git diff
git add alunos.txt
git diff --staged          # o hábito: conferir antes de todo commit
git commit -m "Adiciona a Carla"

# --- O histórico ---
git log
git log --oneline          # aperte q para sair do visualizador, se ele abrir

# --- Desfazer uma mudança ainda sem git add ---
echo "linha estragada" >> alunos.txt
git status
git restore alunos.txt

# --- O que não entra no repositório ---
touch .env
mkdir bin && touch bin/cadastro   # pasta vazia o Git não mostra
git status
printf '# Variáveis de ambiente locais\n.env\n\n# Executáveis gerados\nbin/\n' > .gitignore
git status
git add .gitignore
git commit -m "Ignora .env e bin/"
git log --oneline

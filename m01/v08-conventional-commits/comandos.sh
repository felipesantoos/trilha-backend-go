#!/usr/bin/env bash
# M01 · V08 — Conventional Commits e o fluxo de trabalho
#
# Continua do repositório cadastro-alunos (M01 · V02 a V06), já no GitHub (M01 · V04).
# Rode um comando por vez. Troque <seu-usuario> pelo seu usuário do GitHub.

cd ~/trilha-backend/projetos/cadastro-alunos
git switch main
git pull

# --- A develop (se ainda não tiver) e a feature ---
git switch -c develop main
git push -u origin develop
git switch -c feature/cadastro-turmas develop

# --- feat: arquivo novo precisa de git add (o -am não leva arquivos novos) ---
printf 'Go básico\nGo avançado\n' > turmas.txt
git commit -am "feat: adiciona o cadastro de turmas"   # nothing added to commit but untracked files present
git add turmas.txt
git commit -m "feat: adiciona o cadastro de turmas"

# --- docs: o arquivo já é acompanhado, então o -am serve ---
printf '\nAs turmas ficam no arquivo turmas.txt, uma por linha.\n' >> README.md
git commit -am "docs: explica o arquivo de turmas no README"

git log --oneline
git push -u origin feature/cadastro-turmas
# Abra o PR para a develop no GitHub, com o título no padrão:
#   feat: adiciona o cadastro de turmas

# --- Submódulos: crie antes um repositório vazio "plataforma" no GitHub ---
mkdir -p ~/trilha-backend/projetos/plataforma
cd ~/trilha-backend/projetos/plataforma
git init
git submodule add git@github.com:<seu-usuario>/cadastro-alunos.git cadastro-alunos
# Pelo caminho da pasta (../cadastro-alunos), o Git recusa: fatal: transport 'file' not allowed
cat .gitmodules
git commit -m "chore: adiciona o cadastro-alunos como submódulo"
git remote add origin git@github.com:<seu-usuario>/plataforma.git
git push -u origin main

# --- Clonar sem os submódulos: a pasta vem vazia ---
cd ~/trilha-backend/projetos
git clone git@github.com:<seu-usuario>/plataforma.git plataforma-clone
ls plataforma-clone/cadastro-alunos
cd plataforma-clone
git submodule update --init --recursive
ls cadastro-alunos

# --- Mudar o serviço de dentro da plataforma ---
cd cadastro-alunos
git status                      # HEAD detached at …
git switch main
echo "Fábio" >> alunos.txt
git commit -am "feat: adiciona o Fábio"
git push
cd ..
git status                      # modified: cadastro-alunos (new commits)
git add cadastro-alunos
git commit -m "chore: atualiza o cadastro-alunos"
git push

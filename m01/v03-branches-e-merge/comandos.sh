#!/usr/bin/env bash
# M01 · V03 — Branches e merge
#
# Continua do repositório cadastro-alunos da M01 · V02 (m01/v02-primeiros-commits).
# Rode um comando por vez. A pasta cadastro-alunos/ ao lado tem os arquivos como ficam no fim.

cd ~/trilha-backend/projetos/cadastro-alunos
git branch                                   # a atual aparece com *

# --- Criar uma branch e trabalhar nela ---
git switch -c adiciona-diego
echo Diego >> alunos.txt                     # ou pelo VS Code
git commit -am "Adiciona o Diego"            # -a: adiciona sozinho os arquivos já acompanhados
git switch main
cat alunos.txt                               # o Diego não está aqui

# --- Merge fast-forward: só a branch que chega andou ---
git merge adiciona-diego
git log --oneline --graph
git branch -d adiciona-diego

# --- Merge commit: as duas branches andaram ---
git switch -c turma-sql
echo "Turma de SQL" > turmas.txt
git add turmas.txt
git commit -m "Cria a turma de SQL"
git switch main
echo "As turmas ficam no arquivo turmas.txt." >> README.md
git commit -am "Atualiza o README"
git merge turma-sql -m "Junta a branch turma-sql"   # sem -m, o Git abre o editor para a mensagem
git log --oneline --graph
git branch -d turma-sql

# --- O -d protege trabalho não juntado ---
git switch -c experimento
echo teste > experimento.txt
git add experimento.txt
git commit -m "Experimento"
git switch main
git branch -d experimento                    # erro: not fully merged
git branch -D experimento                    # só se tiver certeza: apaga o trabalho não juntado

#!/usr/bin/env bash
# M01 · V06 — Resolvendo conflitos
#
# Continua do repositório cadastro-alunos da M01 · V03 (alunos: Ana, Bruno, Carla, Diego).
# Rode um comando por vez. Os arquivos alunos-com-conflito.txt e alunos-resolvido.txt
# desta pasta mostram o alunos.txt no meio do conflito e depois de resolvido.

cd ~/trilha-backend/projetos/cadastro-alunos
git switch main

# --- Montar o conflito: as duas branches mudam a mesma linha ---
git switch -c corrige-nome
sed -i 's/^Bruno$/Bruno Lima/' alunos.txt     # ou troque "Bruno" por "Bruno Lima" no VS Code
git commit -am "Corrige o nome do Bruno"
git switch main
sed -i 's/^Bruno$/Bruno Alves/' alunos.txt    # ou troque "Bruno" por "Bruno Alves" no VS Code
git commit -am "Completa o nome do Bruno"

# --- O conflito ---
git merge corrige-nome      # CONFLICT (content): Merge conflict in alunos.txt
git status                  # both modified: alunos.txt
cat alunos.txt              # os marcadores <<<<<<< ======= >>>>>>>

# --- Resolver: edite o alunos.txt, deixe "Bruno Lima Alves" e apague os marcadores ---
sed -i '/^<<<<<<< /d; /^=======$/d; /^>>>>>>> /d; /^Bruno Lima$/d; s/^Bruno Alves$/Bruno Lima Alves/' alunos.txt
git add alunos.txt
git diff --staged --check   # sem saída: nenhum marcador sobrando
git commit -m "Resolve conflito no nome do Bruno"
git log --oneline --graph
git branch -d corrige-nome

# --- Desistir de um merge: monte outro conflito e cancele ---
git switch -c outro-nome
sed -i 's/^Carla$/Carla Souza/' alunos.txt
git commit -am "Sobrenome da Carla"
git switch main
sed -i 's/^Carla$/Carla Dias/' alunos.txt
git commit -am "Outro sobrenome da Carla"
git merge outro-nome        # CONFLICT de novo
git merge --abort
git status                  # tudo como antes do merge
git branch -D outro-nome     # limpa a branch do teste (o trabalho dela não foi juntado, por isso o -D)

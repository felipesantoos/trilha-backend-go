#!/usr/bin/env bash
# M00 · V03 — Terminal essencial (Linux / WSL)
#
# Os comandos do vídeo, na ordem. Não rode o arquivo inteiro de uma vez:
# copie e cole um comando por vez no terminal e veja o que cada um faz.
# As linhas com "erro" são de propósito, para você ver a mensagem.
#
# Atalhos: Tab completa nomes; seta para cima repete comandos; Ctrl+C interrompe
# (no terminal ele não copia); para colar, Ctrl+Shift+V (Linux) ou Ctrl+V no Terminal do Windows.

# --- Só no Windows: instalar o WSL (no PowerShell, como administrador) ---
# wsl --install
# Depois, reinicie o computador e abra o Ubuntu.
# Ao criar a senha, nada aparece enquanto você digita. É normal.

# --- Onde estou e o que tem aqui ---
pwd                     # mostra a pasta atual
ls                      # lista o que tem na pasta atual

# --- Criar a pasta de estudos e entrar nela ---
cd trilha-backend       # erro: No such file or directory (a pasta ainda não existe)
mkdir trilha-backend    # cria a pasta
cd trilha-backend       # entra na pasta
pwd

mkdir anotacoes projetos   # cria duas pastas de uma vez
ls

# --- Arquivos: criar, copiar, mover/renomear e apagar ---
touch anotacoes/terminal.txt                     # cria um arquivo vazio
cp anotacoes/terminal.txt anotacoes/copia.txt    # copia: de onde, para onde
mv anotacoes/copia.txt anotacoes/git.txt         # move (aqui, renomeia)
ls anotacoes

rm anotacoes/git.txt    # apaga. Cuidado: o rm não manda para a lixeira
rm projetos             # erro: Is a directory (para pastas existe o rm -r, use com calma)

# --- Caminhos relativos e absolutos ---
cd anotacoes            # relativo: a partir de onde estou
cd ../projetos          # .. sobe um nível
pwd                     # o caminho absoluto começa com /
cd                      # cd sozinho volta para a pasta pessoal

# --- Variáveis de ambiente e PATH ---
echo $HOME              # a pasta pessoal
echo $PATH              # as pastas onde o terminal procura programas, separadas por :
which ls                # em qual pasta do PATH o ls está

go version              # erro: Command 'go' not found (o Go entra no próximo vídeo)

# --- Só no WSL: abrir a pasta atual no Explorador de Arquivos do Windows ---
# Guarde os projetos no Ubuntu (~/trilha-backend), não em /mnt/c: lá fica bem mais lento.
explorer.exe .

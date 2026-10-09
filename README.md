# Trilha Backend em Go

Código das aulas da **Trilha Backend em Go**: do primeiro comando no terminal até uma API completa, com banco de dados, testes e arquitetura hexagonal.

Cada vídeo tem o seu código aqui, para você rodar, comparar e consultar depois.

## Como usar

- **Demos avulsas** (módulos 00 a 07): cada vídeo tem uma pasta própria, no formato `mNN/vNN-nome-do-video/`. Por exemplo, o código do vídeo M03 · V05 fica em `m03/v05-ponteiros-na-pratica/`.
- **API de tarefas** (do módulo 08 em diante): fica na pasta `api-tarefas/`, que evolui ao longo da trilha. O estado do código no fim de cada vídeo fica numa branch `aula/mNN-vNN`. Para ver o que mudou de um vídeo para o outro:

  ```bash
  git diff aula/m10-v02 aula/m10-v03
  ```

## Aulas

| Código | Vídeo | Código do vídeo |
|---|---|---|
| M00 · V01 | Boas-vindas: o que é backend e o que vamos construir | [`m00/v01-boas-vindas`](m00/v01-boas-vindas) |

## Glossário

Os nomes no código são em português. As palavras em inglês que você vai encontrar são da própria linguagem Go, das bibliotecas ou nomes técnicos que a trilha ensina.

| Termo | O que é |
|---|---|
| backend | A parte do sistema que roda no servidor: recebe os pedidos, aplica as regras e guarda os dados. |
| frontend | A parte que a pessoa vê e usa: telas, botões e formulários. |
| API | A porta de entrada do backend: o jeito combinado de fazer pedidos a ele. |
| HTTP | A "língua" que o frontend e o backend usam para conversar. |
| JSON | O formato de texto mais usado para enviar dados numa API. |

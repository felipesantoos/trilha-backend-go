#!/usr/bin/env bash
# M00 · V01 — Boas-vindas: o que é backend e o que vamos construir
#
# Conversando direto com um backend, sem tela no meio.
# A opção -i mostra também o status e os cabeçalhos da resposta.

# CEP que existe: status 200 e o endereço em JSON.
curl -i https://viacep.com.br/ws/01001000/json/

# CEP que não existe: o backend não quebra, responde avisando o erro.
# Repare que o status ainda vem 200: essa API avisa o erro só no campo "erro".
curl -i https://viacep.com.br/ws/99999999/json/

# CEP com formato errado: agora o próprio status avisa (400 Bad Request).
curl -i https://viacep.com.br/ws/123/json/

# No Windows PowerShell, troque curl por curl.exe (lá, curl é um apelido de Invoke-WebRequest).

# Dicionário de Dados

## CLIENTE

| Campo | Tipo |
|-------|------|
| id_cliente | SERIAL |
| nome | VARCHAR(100) |
| email | VARCHAR(100) |
| telefone | VARCHAR(20) |

## FREELANCER

| Campo | Tipo |
|-------|------|
| id_freelancer | SERIAL |
| nome | VARCHAR(100) |
| email | VARCHAR(100) |
| area_atuacao | VARCHAR(100) |

## HABILIDADE

| Campo | Tipo |
|-------|------|
| id_habilidade | SERIAL |
| nome_habilidade | VARCHAR(100) |

## PROJETO

| Campo | Tipo |
|-------|------|
| id_projeto | SERIAL |
| titulo | VARCHAR(150) |
| descricao | TEXT |
| orcamento | DECIMAL(10,2) |
| prazo_entrega | DATE |
| status | VARCHAR(50) |

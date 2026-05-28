SELECT
    p.id_projeto,
    p.titulo,
    c.nome AS cliente,
    p.descricao,
    p.orcamento,
    p.prazo_entrega
FROM PROJETO p
JOIN CLIENTE c
ON p.id_cliente = c.id_cliente
WHERE
    p.status='Aberto'
    AND p.orcamento > 500
ORDER BY
    p.orcamento DESC,
    p.prazo_entrega ASC;


SELECT
    ct.id_contrato,
    p.titulo,
    c.nome,
    c.email,
    f.nome AS freelancer,
    ct.valor_acordado,
    ct.data_inicio,
    ct.data_fim_prevista
FROM CONTRATO ct
JOIN PROJETO p
ON ct.id_projeto = p.id_projeto
JOIN CLIENTE c
ON p.id_cliente = c.id_cliente
JOIN FREELANCER f
ON ct.id_freelancer = f.id_freelancer
WHERE ct.status='Ativo'
ORDER BY ct.data_inicio DESC;

SELECT
    f.nome,
    f.email,
    h.nome_habilidade,
    fh.nivel_proficiencia,
    AVG(a.nota) AS media_avaliacoes
FROM FREELANCER f
JOIN FREELANCER_HABILIDADE fh
ON f.id_freelancer = fh.id_freelancer
JOIN HABILIDADE h
ON fh.id_habilidade = h.id_habilidade
JOIN AVALIACAO a
ON f.id_freelancer = a.id_freelancer
GROUP BY
    f.nome,
    f.email,
    h.nome_habilidade,
    fh.nivel_proficiencia
HAVING AVG(a.nota) > 3
ORDER BY AVG(a.nota) DESC;

SELECT
    f.area_atuacao,
    COUNT(DISTINCT f.id_freelancer) AS total_freelancers,
    COUNT(DISTINCT p.id_projeto) AS total_projetos_concluidos,
    SUM(ct.valor_acordado) AS valor_total_contratos
FROM FREELANCER f
JOIN CONTRATO ct
ON f.id_freelancer = ct.id_freelancer
JOIN PROJETO p
ON ct.id_projeto = p.id_projeto
WHERE
    p.status='Concluído'
    AND ct.status='Encerrado'
GROUP BY f.area_atuacao;
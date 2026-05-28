INSERT INTO CLIENTE (nome,email,telefone)
VALUES
('João Silva','joao@email.com','49999990001'),
('Maria Souza','maria@email.com','49999990002');

INSERT INTO FREELANCER (nome,email,area_atuacao)
VALUES
('Carlos Mendes','carlos@email.com','Desenvolvimento Web'),
('Ana Costa','ana@email.com','Design');

INSERT INTO HABILIDADE (nome_habilidade)
VALUES
('JavaScript'),
('React'),
('UI/UX');

INSERT INTO FREELANCER_HABILIDADE
(id_freelancer,id_habilidade,nivel_proficiencia)
VALUES
(1,1,'Avançado'),
(1,2,'Intermediário'),
(2,3,'Avançado');

INSERT INTO PROJETO
(titulo,descricao,orcamento,prazo_entrega,status,id_cliente)
VALUES
(
'Site Ecommerce',
'Loja virtual completa',
1500.00,
'2026-08-10',
'Aberto',
1
),
(
'Identidade Visual',
'Criação de marca',
700.00,
'2026-07-15',
'Concluído',
2
);

INSERT INTO CONTRATO
(valor_acordado,data_inicio,data_fim_prevista,status,id_projeto,id_freelancer)
VALUES
(
1200.00,
'2026-05-20',
'2026-08-10',
'Ativo',
1,
1
),
(
650.00,
'2026-04-10',
'2026-07-15',
'Encerrado',
2,
2
);

INSERT INTO AVALIACAO
(nota,comentario,id_cliente,id_freelancer)
VALUES
(4.8,'Excelente profissional',1,1),
(4.2,'Muito bom trabalho',2,2);
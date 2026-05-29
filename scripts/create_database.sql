CREATE TABLE CLIENTE (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE FREELANCER (
    id_freelancer SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    area_atuacao VARCHAR(100)
);

CREATE TABLE HABILIDADE (
    id_habilidade SERIAL PRIMARY KEY,
    nome_habilidade VARCHAR(100) NOT NULL
);

CREATE TABLE FREELANCER_HABILIDADE (
    id_freelancer INTEGER NOT NULL,
    id_habilidade INTEGER NOT NULL,
    nivel_proficiencia VARCHAR(50),
    PRIMARY KEY (id_freelancer,id_habilidade)
);

CREATE TABLE PROJETO (
    id_projeto SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    orcamento DECIMAL(10,2),
    prazo_entrega DATE,
    status VARCHAR(50),
    id_cliente INTEGER REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE CONTRATO (
    id_contrato SERIAL PRIMARY KEY,
    valor_acordado DECIMAL(10,2),
    data_inicio DATE,
    data_fim_prevista DATE,
    status VARCHAR(50),
    id_projeto INTEGER REFERENCES PROJETO(id_projeto),
    id_freelancer INTEGER REFERENCES FREELANCER(id_freelancer)
);

CREATE TABLE AVALIACAO (
    id_avaliacao SERIAL PRIMARY KEY,
    nota DECIMAL(3,1),
    comentario TEXT,
    id_cliente INTEGER REFERENCES CLIENTE(id_cliente),
    id_freelancer INTEGER REFERENCES FREELANCER(id_freelancer)
);
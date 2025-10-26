-- Super-entidade
INSERT INTO PESSOA(NOME, DT_NASC, GENERO, END_CEP, END_BAIRRO, LIDERA_GANGUE) VALUES
    ('Claude Speed','2001-10-22','M', '00000008', 'Red Light District', NULL),
    ('Catalina', '2001-10-22', 'F', '00000002','Callahan Point', 'Cartel Colombiano'),
    ('Donald Love', '2001-10-22', 'M', '00000007','Portland View', NULL),
    ('Asuka Kasen', '2001-10-22', 'F', '00000005','Portland Beach', 'Yakuza'),
    ('Kenji Kasen', '2001-10-22', 'M', '00000005', 'Portland Beach', 'Yakuza'),
    ('Maria Latore', '2001-10-22', 'F', '00000005','Portland Beach', NULL),
    ('Misty', '2001-10-22', 'F', '00000008','Red Light District', NULL),
    ('Salvatore Leone', '2001-10-22', 'M', '00000009','Saint Marks', 'Máfia Italiana'),
    ('Toni Cipriani', '2001-10-22', 'M', '00000009','Saint Marks', 'Máfia Italiana'),
    ('Lee Chong', '2001-10-22', 'M', '00000003','Chinatown', 'Chinatown'),
    ('Cisco', '2001-10-22', 'M', '00000010','Trenton', 'Cartel Colombiano'),
    ('Miguel', '2001-10-22', 'M', '00000010','Trenton', 'Cartel Colombiano' ),
    ('Luigi Goterelli', '2001-10-22', 'M', '00000008', 'Red Light District', 'Máfia Italiana'),
    ('Joey', '2001-10-22', 'M', '00000004', 'Hepburn Heights', NULL)

-- Sub-entidades
INSERT INTO PROTAGONISTA(NOME) VALUES
    ('Claude Speed'), -- (III)
    ('Toni Cipriani'); -- (LCS)

INSERT INTO NPC(NOME) VALUES
    ('Misty'),
    ('Lee Chong'),
    ('Cisco'),
    ('Miguel');
-- ----------------------------------------------

-- Entidade fraca
INSERT INTO MISSAO(NOME_PROTAGONISTA,DESCRICAO,RECOMPENSA) VALUES
    ('Claude Speed','Vá com 8-Ball até seu esconderijo e depois, ao Clube do Luigi', NULL),
    ('Claude Speed', 'Vá ao hospital e leve Misty até o clube do Luigi', 100.00),
    ('Claude Speed', 'Mate o traficante, roube o carro dele e repinte-o', 250.00)
    ('Claude Speed', 'Leve Misty até a garagem de Joey', 150.00),
    ('Claude Speed', 'Mate os dois cafetões', 300.00),
    ('Claude Speed', 'Leve o máximo de prostitutas possíveis até o Old School Hall', 500.00);

INSERT INTO LOCALIDADE(NOME_PROTAGONISTA, DESCRICAO, NOME_LOCAL) VALUES
    ('Claude Speed','Vá com 8-Ball até seu esconderijo e depois, ao Clube do Luigi', 'Clube do Luigi'),
    -- ----------------------------------------------
    ('Claude Speed', 'Vá ao hospital e leve Misty até o clube do Luigi', 'Hospital'),
    ('Claude Speed', 'Vá ao hospital e leve Misty até o clube do Luigi', 'Clube do Luigi'),
    -- ----------------------------------------------
    ('Claude Speed', 'Mate o traficante, roube o carro dele e repinte-o', 'Docas de Portland'),
    -- ----------------------------------------------
    ('Claude Speed', 'Leve Misty até a garagem de Joey', 'Clube do Luigi'),
    ('Claude Speed', 'Leve Misty até a garagem de Joey', 'Garagen do Joey'),
    -- ----------------------------------------------
    ('Claude Speed', 'Mate os dois cafetões', 'Chinatown'),
    -- ----------------------------------------------
    ('Claude Speed', 'Leve o máximo de prostitutas possíveis até o Old School Hall', 'Portland')
-- ----------------------------------------------


-- Entidades regulares
INSERT INTO GANGUE(NOME, COR) VALUES
    ('Cartel Colombiano', 'Marrom'),
    ('Yakuza', 'Vinho'),
    ('Máfia Italiana', 'Preto'),
    ('Chinatown', 'Azul'),
    ('Groove Street', 'Verde');

INSERT INTO VEICULO(NOME, MARCA, TIPO) VALUES
    ('Banshee','Bravado','Esportivo'),
    ('Blista', NULL, 'Minivan'),
    ('Cabbie', NULL, 'Táxi'),
    ('Cheetah', 'Grotti', 'Super Esportivo'),
    ('Dodo', 'Mammoth', 'Avião'),
    ('Infernus', 'Pegassi', 'Super Esportivo'),
    ('Rhino', NULL, 'Militar'),
    ('Patriot', 'Mammoth', 'Off-road'),
    ('Stockade', 'Brute', 'Comercial'),
    ('Mr. Whoopee', NULL, 'Comercial'),
    ('Speeder', NULL, 'Barco');

INSERT INTO RADIO(NOME, NUMERO) VALUES
    ('Double Clef FM', NULL),
    ('Flashback FM', 95.6),
    ('Game Radio FM', NULL),
    ('Head Radio', NULL),
    ('K-JAH', NULL),
    ('Lips', 106.0),
    ('MSX FM', NULL),
    ('Rise FM', NULL),
    ('Chatterbox FM', NULL);

INSERT INTO MUSICA(NOME, GENERO1, GENERO2) VALUES
    -- Double Clef FM (III)
    ('Non Piu Andrai Farfallone Amoroso', 'CLASSICA', 'OPERA')
    ('Chi Mi Frena In Tal Momento', 'CLASSICA', 'OPERA'),
    ('Libiamo Nelieti Calici', 'CLASSICA', 'OPERA'),
    ('Finchhan Del Vino', 'CLASSICA', 'OPERA'),
    ('La Donna E Mobile', 'CLASSICA', 'OPERA')
    
    -- Flashback FM (III)
    ('Rush Rush', 'POP'),
    ('Shake It Up', 'POP'),
    ('Push It To The Limit', 'POP'),
    ('She is On Fire', 'POP'),
    ('I am Hot Tonight', 'POP'),
    
    -- Game Radio FM (III)
    ('Scary Movies', 'RAP', 'HIP-HOP'),
    ('We are Live (Danger)', 'RAP', 'HIP-HOP'),
    ('Nature Freestyle', 'RAP', 'HIP-HOP'),
    ('JoJo Pellegrino Freestyle', 'RAP', 'HIP-HOP'),
    ('Spit Game', 'RAP', 'HIP-HOP'),
    ('I am the King', 'RAP', 'HIP-HOP'),
    ('By a Stranger', 'RAP', 'HIP-HOP'),
    ('Rising to the Top', 'RAP', 'HIP-HOP');

INSERT INTO ROTINA(DESCRICAO,NOME_NPC) VALUES
    ('Dirigir até o trabalho pela manhã', 'Cisco'),
    -- ('Comprar café na lanchonete local'),
    ('Patrulhar as ruas em horário fixo', 'Miguel'),
    ('Ficar conversando na esquina', 'Misty'),
    ('Fazer compras no mercado da vizinhança', 'Misty'),
    ('Treinar na academia da cidade', 'Cisco'),
    -- ('Esperar o ônibus no ponto central'),
    ('Passear com o cachorro pelo parque', 'Misty'),
    ('Trabalhar em uma barraca de comida de rua', 'Lee Chong');
    -- ('Voltar para casa e assistir TV à noite')
-- ----------------------------------------------

-- Entidade associativa
INSERT INTO FAZ(NOME_PROTAGONISTA, DESCRICAO) VALUES
    ('Claude Speed','Vá com 8-Ball até seu esconderijo e depois, ao Clube do Luigi'),
    ('Claude Speed', 'Vá ao hospital e leve Misty até o clube do Luigi'),
    ('Claude Speed', 'Mate o traficante, roube o carro dele e repinte-o')
    ('Claude Speed', 'Leve Misty até a garagem de Joey'),
    ('Claude Speed', 'Mate os dois cafetões'),
    ('Claude Speed', 'Leve o máximo de prostitutas possíveis até o Old School Hall');
-- ----------------------------------------------

-- Auto-relacionamento
INSERT INTO AJUDA(AJUDANTE, AJUDADO) VALUES
    ('Toni Cipriani', 'Claude Speed');
-- ----------------------------------------------

-- Relacionamentos
INSERT INTO MATA(NOME_PROTAGONISTA, NOME_NPC, KILL_COUNT) VALUES
    ('Toni Cipriani', 'Misty', 2),
    ('Toni Cipriani', 'Lee Chong', 5),
    ('Claude Speed', 'Cisco', 10),
    ('Claude Speed', 'Miguel', 5)
    ('Claude Speed', 'Lee Chong', 3);

INSERT INTO DIRIGE(NOME_PROTAGONISTA, DESCRICAO, NOME_VEICULO) VALUES
    ('Claude Speed','Vá com 8-Ball até seu esconderijo e depois, ao Clube do Luigi', 'Banshee'),
    ('Claude Speed', 'Vá ao hospital e leve Misty até o clube do Luigi', 'Cabbie'),
    ('Claude Speed', 'Mate o traficante, roube o carro dele e repinte-o', 'Rhino')
    ('Claude Speed', 'Leve Misty até a garagem de Joey', 'Cabbie'),
    ('Claude Speed', 'Mate os dois cafetões', 'Infernus'),
    ('Claude Speed', 'Leve o máximo de prostitutas possíveis até o Old School Hall', 'Blista');

-- Ternario
INSERT INTO TOCA(NOME_VEICULO, NOME_MUSICA, NOME_RADIO) VALUES
    ('Banshee', 'Non Piu Andrai Farfallone Amoroso', 'Double Clef FM'),
    ('Banshee', 'Chi Mi Frena In Tal Momento', 'Double Clef FM'),
    ('Patriot', 'Shake It Up', 'K-JAH'),
    ('Cheetah', 'Scary Movies' , 'Rise FM');
-- ----------------------------------------------
create database sprint1;
use sprint1;

create table cliente(
	idCliente int primary key auto_increment,
    nome varchar(50),
    estado varchar(50),
    endereco varchar(150),
    mediaDescarte varchar (4),
	cnpj char(20)
);

create table carne(
	idCarne int primary key auto_increment,
	marca varchar(50),
	tipo varchar(50)
);

create table sensor(
	idSensor int primary key auto_increment,
	temperaturaMedia int
);

create table freezer(
	idFreezer int primary key auto_increment,
    capacidadeFreezer int
);

create table estabelecimento(
	idEstabelecimento int primary key auto_increment,
    qtdRefrigeradores int
);

create table central(
	idCentral int primary key auto_increment,
	msgMediaTemperatura varchar(150),
    msgFalhaRefrigeracao varchar(150)
);

INSERT INTO cliente (nome, estado, endereco, cnpj, mediaDescarte) VALUES 
					('Friboi', 'São Paulo','Av. Marginal Direita do Tietê, 500 - Vila Jaguara, São Paulo', '02.916.265/0001-60', '15%'),
                    ('Swift', 'São Paulo', ' R. Cristóvão de Gouvêia, 320 - Parque Anhanguera, São Paulo ', '36.425.014/0001-02', '12%'),
                    ('Montana', 'São Paulo', 'R. Acarape, 559 - Jardim Cambui, Santo André','19.490.389/0001-29', '20%');
                    
-- Exibir todos os campos da tabela cliente                    
SELECT * FROM cliente;

-- Exibir todos os campos ordenados pela mediaDescarte em ordem decrescente
SELECT * FROM cliente ORDER BY mediaDescarte DESC; 

-- Exibir todos os campos ordenados pela mediaDescarte em ordem crescente
SELECT * FROM cliente ORDER BY mediaDescarte; 

-- Exibir o cliente cadastrado que tenha o nome Swift
SELECT * FROM cliente WHERE nome = 'Swift';

-- Exibir o cliente cadastrado que tenha o nome Friboi
SELECT * FROM cliente WHERE nome = 'Friboi';

-- Exibir o cliente cadastrado que tenha o nome Montana
SELECT * FROM cliente WHERE nome = 'Montana';

-- Exibir cliente com determinada inicial
SELECT * FROM cliente WHERE nome LIKE '%S%';

-- Exibir nome do cliente terminado com determinada letra
SELECT * FROM cliente WHERE nome LIKE '%i';

-- Exibir nome do cliente com determinada letra como penultima
SELECT * FROM cliente WHERE nome LIKE '%n_';

-- Exibir nome do cliente com determinada letra como segunda
SELECT * FROM cliente WHERE nome LIKE '_W%';

-- Atualizar o cliente de id 3
UPDATE cliente
SET mediaDescarte = '11%'
WHERE idCliente = 3;

-- Dropar banco
Drop database sprint1;

-- Deletar cliente de id 3
DELETE FROM cliente
WHERE id = 3;                    
                   
CREATE DATABASE loja;
USE loja;

CREATE TABLE categoria(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100)
);



CREATE TABLE produto(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR( 120),
qtd INT(10),
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria)
REFERENCES categoria(cd)
);



CREATE TABLE vendedor(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100),
salario DECIMAL(10,2)
);



CREATE TABLE estado(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
sigla CHAR(2)
);



CREATE TABLE cidade(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
id_estado INT,
FOREIGN KEY (id_estado) REFERENCES estado(cd)
);



CREATE TABLE cliente(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
telefone VARCHAR(100),
sexo CHAR(1),
status CHAR(8),
id_cidade INT,
FOREIGN KEY (id_cidade) REFERENCES cidade(cd)
);



CREATE TABLE pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_vendedor INT,
dt_pedido DATE,
vl_total DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES cliente(cd),
FOREIGN KEY (id_vendedor) REFERENCES vendedor(cd)
);



CREATE TABLE item_pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
qt_produto INT,
vl_unitario DECIMAL(10,2),
FOREIGN KEY (id_pedido) REFERENCES pedido(cd),
FOREIGN KEY (id_produto) REFERENCES produto(cd)
);

INSERT INTO categoria VALUES(NULL, "Elétrica");
INSERT INTO categoria VALUES(NULL, "Hidráulica");
INSERT INTO categoria VALUES(NULL, "Ferragem");
INSERT INTO categoria VALUES(NULL, "Construção");
INSERT INTO categoria VALUES(NULL, "Ferramentas");

INSERT INTO produto VALUES(NULL, "chuveiro", 15, "45.00", 1);
INSERT INTO produto VALUES(NULL, "lâmpada 15A", 20, "20.00", 1);
INSERT INTO produto VALUES(NULL, "extensão", 25, "50.00", 1);
INSERT INTO produto VALUES(NULL, "soquete", 30, "15.00", 1);
INSERT INTO produto VALUES(NULL, "fio - 1m", 35, "90.00", 1);

INSERT INTO produto VALUES(NULL, "torneira", 10, "30.00", 2);
INSERT INTO produto VALUES(NULL, "caixa d'agua", 10, "300.00", 2);
INSERT INTO produto VALUES(NULL, "privada", 10, "150.00", 2);
INSERT INTO produto VALUES(NULL, "pia plástico", 10, "70.00", 2);
INSERT INTO produto VALUES(NULL, "sifão", 10, "50.00", 2);

INSERT INTO produto VALUES(NULL, "ferro", 20, "35.00", 3);
INSERT INTO produto VALUES(NULL, "arame - 1M", 30, "40.00", 3);
INSERT INTO produto VALUES(NULL, "vergalhão", 25, "20.00", 3);
INSERT INTO produto VALUES(NULL, "coluna", 40, "40.00", 3);
INSERT INTO produto VALUES(NULL, "treliça", 50, "10.00", 3);

INSERT INTO produto VALUES(NULL, "AREIA - 1M", 20, "105.00", 4);
INSERT INTO produto VALUES(NULL, "PEDRA - 1M", 20, "100.00", 4);
INSERT INTO produto VALUES(NULL, "CASCALHO - 1M", 20, "120.00", 4);
INSERT INTO produto VALUES(NULL, "BLOCO", 3000, "10.00", 4);
INSERT INTO produto VALUES(NULL, "TIJOLO", 2000, "20.00", 4);

INSERT INTO produto VALUES(NULL, "chave de boca", 15, "20.00", 5);
INSERT INTO produto VALUES(NULL, "chave de fenda", 35, "10.00", 5);
INSERT INTO produto VALUES(NULL, "carrinho", 5, "75.00", 5);
INSERT INTO produto VALUES(NULL, "enxada", 50, "15.00", 5);
INSERT INTO produto VALUES(NULL, "colher", 15, "20.00", 5);

INSERT INTO vendedor VALUES(NULL, "paulo", 2000.00);
INSERT INTO vendedor VALUES(NULL, "mariana", 1200.00);
INSERT INTO vendedor VALUES(NULL, "rodolfo", 3000.00);

INSERT INTO estado VALUES(NULL, "sergipe", "SE");
INSERT INTO estado VALUES(NULL, "são paulo", "SP");
INSERT INTO estado VALUES(NULL, "minas gerais", "MG");

INSERT INTO cidade VALUES(NULL, "Aracaju", 1);
INSERT INTO cidade VALUES(NULL, "Lagarto", 1);
INSERT INTO cidade VALUES(NULL, "Carira", 1);

INSERT INTO cidade VALUES(NULL, "Peruíbe", 2);
INSERT INTO cidade VALUES(NULL, "São Paulo", 2);
INSERT INTO cidade VALUES(NULL, "Santos", 2);

INSERT INTO cidade VALUES(NULL, "belo horizonte", 3);
INSERT INTO cidade VALUES(NULL, "poços de caldas", 3);
INSERT INTO cidade VALUES(NULL, "uberaba", 3);

INSERT INTO cliente VALUES(NULL, "paulinho","aa-aaaaaaaaaa", "M", "inativo", 1);
INSERT INTO cliente VALUES(NULL, "marmo","aa-aaaaaaaaaa", "F", "inativo", 2);
INSERT INTO cliente VALUES(NULL, "rafael","aa-aaaaaaaaaa", "M", "inativo", 3);
INSERT INTO cliente VALUES(NULL, "vini","aa-aaaaaaaaaa", "M", "ativo", 4);
INSERT INTO cliente VALUES(NULL, "carol","aa-aaaaaaaaaa", "F", "ativo", 5);
INSERT INTO cliente VALUES(NULL, "pedro","aa-aaaaaaaaaa", "M", "ativo", 6);
INSERT INTO cliente VALUES(NULL, "rodolfo","aa-aaaaaaaaaa", "F", "ativo", 7);
INSERT INTO cliente VALUES(NULL, "gii","aa-aaaaaaaaaa", "F", "ativo", 8);
INSERT INTO cliente VALUES(NULL, "maria","aa-aaaaaaaaaa", "F", "ativo", 9);

INSERT INTO pedido VALUES(NULL, 9, 3, "2022/11/5", 170.00);
INSERT INTO item_pedido VALUES(NULL, 1, 25, 2, 20.00);
INSERT INTO item_pedido VALUES(NULL, 1, 23, 2, 75.00);


INSERT INTO pedido VALUES(NULL, 8, 2, "2022/11/17", 170.00);
INSERT INTO item_pedido VALUES(NULL, 2, 23, 2, 75.00);
INSERT INTO item_pedido VALUES(NULL, 2, 25, 2, 20.00);


INSERT INTO pedido VALUES(NULL, 9, 1, "2022/11/18", 110.00);
INSERT INTO item_pedido VALUES(NULL, 3, 22, 2, 10.00);
INSERT INTO item_pedido VALUES(NULL, 3, 6, 2, 45.00);


INSERT INTO pedido VALUES(NULL, 7, 3, "2022/11/30", 110.00);
INSERT INTO item_pedido VALUES(NULL, 4, 6, 2, 45.00);
INSERT INTO item_pedido VALUES(NULL, 4, 22, 2, 10.00);


INSERT INTO pedido VALUES(NULL, 6, 2, "2022/9/6", 290.00);
INSERT INTO item_pedido VALUES(NULL, 5, 16, 2, 105.00);
INSERT INTO item_pedido VALUES(NULL, 5, 14, 2, 40.00);


INSERT INTO pedido VALUES(NULL, 5, 1, "2022/7/02", 290.00);
INSERT INTO item_pedido VALUES(NULL, 6, 14, 2, 40.00);
INSERT INTO item_pedido VALUES(NULL, 6, 16, 2, 105.00);


INSERT INTO pedido VALUES(NULL, 4, 3, "2022/8/14", 200.00);
INSERT INTO item_pedido VALUES(NULL, 7, 15, 2, 10.00);
INSERT INTO item_pedido VALUES(NULL, 7, 5, 2, 90.00);


INSERT INTO pedido VALUES(NULL, 3, 2, "2022/5/25", 60.00);
INSERT INTO item_pedido VALUES(NULL, 8, 2, 2, 20.00);
INSERT INTO item_pedido VALUES(NULL, 8, 15, 2, 10.00);


INSERT INTO pedido VALUES(NULL, 2, 1, "2022/5/22", 140.00);
INSERT INTO item_pedido VALUES(NULL, 9, 3, 2, 50.00);
INSERT INTO item_pedido VALUES(NULL, 9, 2, 2, 20.00);

INSERT INTO pedido VALUES(NULL, 1, 3, "2022/12/30", 220.00);
INSERT INTO item_pedido VALUES(NULL, 10, 5, 2, 90.00);
INSERT INTO item_pedido VALUES(NULL, 10, 2, 2, 20.00);


SELECT * FROM cliente WHERE status = "ATIVO" order by nome asc;

SELECT * FROM cliente WHERE status = "inativo";

SELECT * FROM produto WHERE id_categoria = 2;

SELECT * FROM produto WHERE valor <= 200.00;

SELECT * FROM cliente WHERE sexo = "F" or sexo = "f";

SELECT * FROM pedido WHERE MONTH(dt_pedido)=MONTH(CURRENT_DATE());

SELECT * FROM pedido WHERE day(dt_pedido)=day(CURRENT_DATE());

SELECT SUM(vl_total) FROM pedido WHERE MONTH(dt_pedido) = MONTH(NOW()) AND YEAR(dt_pedido) = YEAR(NOW());

SELECT * FROM item_pedido WHERE id_pedido = 4;

SELECT * FROM pedido WHERE id_cliente = 2;

Faltou 2 que eu não sei fazer Rodolfo, sorry

Aqui é CBJR

SELECT * FROM produto WHERE qtd<50;

SELECT AVG(valor) as Média_de_preço_dos_produtos FROM produto;

SELECT MIN(valor) as Menor_preço FROM produto;

SELECT MAX(valor) as Maior_preço FROM produto;

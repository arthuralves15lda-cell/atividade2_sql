//1
SELECT * FROM produto WHERE nome_produto LIKE "D%";

//2

SELECT nome_produto, marca, estoque FROM Produto WHERE marca LIKE '%E';

//3

SELECT nome_produto, marca, preco_unitario FROM Produto WHERE nome_produto LIKE '%Gamer%';

//4

SELECT * FROM Cliente WHERE nome_cliente LIKE '%Barbosa%';

//5

SELECT 
    Cliente.nome_cliente, 
    Venda.data_venda, 
    Venda.preco_unitario_venda, 
    Venda.forma_pagamento
FROM Venda
INNER JOIN Cliente ON Venda.id_cliente = Cliente.id_cliente
WHERE Cliente.nome_cliente LIKE 'C%';


//6

SELECT 
    Produto.nome_produto, Produto.preco_unitario, Venda.id_venda, Venda.forma_pagamento
FROM Venda
INNER JOIN Produto ON Venda.id_produto = Produto.id_produto
WHERE Venda.forma_pagamento IN ('PIX', 'Boleto')
  AND Produto.nome_produto LIKE '%Polegada%';

//7

SELECT Produto.nome_produto, Cliente.nome_cliente, Venda.desconto_percentual, Venda.forma_pagamento
FROM Venda
INNER JOIN Produto ON Venda.id_produto = Produto.id_produto
INNER JOIN Cliente ON Venda.id_cliente = Cliente.id_cliente
WHERE Produto.nome_produto LIKE '%Placa%' 
   OR Produto.nome_produto LIKE '%Notebook%' 
   OR Cliente.nome_cliente LIKE '%Ana%'
ORDER BY Venda.status_venda ASC;

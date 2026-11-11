//1
SELECT * FROM Produto 
WHERE data_cadastro BETWEEN '2024-03-01' AND '2024-03-31';

//2
SELECT nome_produto, marca, estoque, data_cadastro FROM Produto 
WHERE data_cadastro BETWEEN '2024-01-01' AND '2024-03-31';

//3
SELECT * FROM Cliente 
WHERE data_cadastro BETWEEN '2023-01-01' AND '2023-01-31';

//4
SELECT nome_cliente, email, cidade, estado, data_cadastro FROM Cliente 
WHERE data_cadastro BETWEEN '2023-06-01' AND '2023-06-15';

//5
SELECT * FROM Venda 
WHERE data_venda BETWEEN '2025-05-01' AND '2025-05-31';

//6
SELECT Cliente.nome_cliente, Venda.data_venda, Venda.preco_unitario_venda, Venda.forma_pagamento
FROM Venda
INNER JOIN Cliente ON Venda.id_cliente = Cliente.id_cliente
WHERE Venda.data_venda BETWEEN '2025-12-24' AND '2026-01-15'
ORDER BY Venda.preco_unitario_venda DESC;

//7
SELECT  Cliente.nome_cliente, Cliente.email, Produto.nome_produto, Produto.marca,Produto.categoria, Venda.forma_pagamento, Venda.data_venda, Venda.status_venda
FROM Venda
INNER JOIN Cliente ON Venda.id_cliente = Cliente.id_cliente
INNER JOIN Produto ON Venda.id_produto = Produto.id_produto
WHERE Venda.status_venda IN ('Cancelada', 'Concluída')
  AND Venda.data_venda BETWEEN '2025-12-01' AND '2025-12-31'
ORDER BY (Venda.quantidade * Venda.preco_unitario_venda) DESC;

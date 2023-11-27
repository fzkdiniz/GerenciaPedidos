CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    TotalPedidos INT
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    descricao_pedido VARCHAR(150),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

INSERT INTO Clientes (id_cliente, nome, TotalPedidos) VALUES
    (1, 'Cloud Strife', 0),
    (2, 'Tifa Lockheart', 0),
    (3, 'Barret Wallace', 0),
    (4, 'Cid Highwind', 0),
    (5, 'Vicent Valentine', 0);
    
    DELIMITER //

CREATE PROCEDURE InserirPedido(
    IN cliente_id INT,
    IN descricao_pedido VARCHAR(100)
)
BEGIN
    INSERT INTO Pedidos (id_cliente, descricao_pedido)
    VALUES (cliente_id, descricao_pedido);
    UPDATE Clientes
    SET TotalPedidos = TotalPedidos + 1
    WHERE id_cliente = cliente_id;
END;
//

DELIMITER ;

CALL InserirPedido(1, 'PEDIDO');

CREATE VIEW PedidosClientes AS
SELECT c.id_cliente, c.nome, p.id_pedido, p.descricao_pedido
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente;


SELECT pc.id_cliente, pc.nome, pc.id_pedido, pc.descricao_pedido, c.TotalPedidos
FROM PedidosClientes pc
JOIN Clientes c ON pc.id_cliente = c.id_cliente;


DELIMITER //
CREATE TRIGGER UpdateTotalPedidos
AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET TotalPedidos = TotalPedidos + 1
    WHERE id_cliente = NEW.id_cliente;
END;
//
DELIMITER ;
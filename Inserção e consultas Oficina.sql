-- INSERÇÃO E CONSULTA DE DADOS

select * FROm cliente;
SHOW TABLES;

INSERT INTO Cliente (Nome_Cliente, CPF, Data_Nascimento) 
VALUES
('João Silva', '12345678901', '1980-01-01'),
('Maria Santos', '23456789012', '1990-07-15'),
('Carlos Oliveira', '34567890123', '2000-12-31'),
('Ana Dias', '45678901234', '1975-05-20'),
('Pedro Costa', '56789012345', '1985-03-14'),
('Julia Souza', '67890123456', '1992-11-11'),
('Marcos Lima', '78901234567', '1988-06-22'),
('Fernanda Alves', '89012345678', '1979-09-29'),
('Ricardo Pereira', '90123456789', '1983-04-17'),
('Patricia Mendes', '01234567890', '1991-10-03');


select * FROm Pagamento;
INSERT INTO Pagamento (IdCliente, Tipo_Pagamento) 
VALUES
(1, 'Cartão'),
(1, 'Boleto'),
(2, 'Cartão'),
(2, 'Dinheiro'),
(3, 'Boleto'),
(4, 'Dinheiro'),
(4, 'Cartão'),
(5, 'Boleto'),
(5, 'Dinheiro'),
(6, 'Cartão'),
(7, 'Cartão'),
(7, 'Boleto'),
(8, 'Dinheiro'),
(9, 'Cartão'),
(10, 'Boleto');


SELECT * FROM Veiculo;
INSERT INTO Veiculo (IdCliente, Marca, Placa, Cor) 
VALUES
(1, 'Toyota', 'ABC1234', 'Preto'),
(1, 'Honda', 'XYZ5678', 'Branco'),
(2, 'Ford', 'JKL4321', 'Azul'),
(3, 'Chevrolet', 'MNO8765', 'Vermelho'),
(4, 'Fiat', 'PQR6789', 'Cinza'),
(5, 'Volkswagen', 'STU5432', 'Verde'),
(5, 'Renault', 'VWX1234', 'Amarelo'),
(6, 'Hyundai', 'YZA9876', 'Prata'),
(7, 'Kia', 'BCD2345', 'Azul'),
(8, 'Nissan', 'EFG3456', 'Preto'),
(9, 'Peugeot', 'HIJ4567', 'Branco'),
(10, 'Citroën', 'KLM5678', 'Cinza');


SELECT * FROM Equipe;
INSERT INTO Equipe (Nome_Equipe)  -- RETIRAR AS REPETIÇÕES (ID VEICULO NÃO CABE AQUI) ALTERAR NO MODELO RELACIONAL
VALUES
('Equipe A'),
('Equipe B'),
('Equipe C'),
('Equipe D');


SELECT * FROM Servico;
INSERT INTO Servico (Servico, Descricao, Valor) 
VALUES
('Troca de Óleo', 'Óleo e filtro', 150.00),
('Balanceamento', 'Balanceamento rodas', 80.00),
('Pintura', 'Pintura completa', 1200.00),
('Troca de Pneus', 'Substituição de pneus', 400.00),
('Suspensão', 'Manutenção suspensão', 450.00),
('Limpeza de Bicos', 'Limpeza bicos injetores', 250.00),
('Troca de Bateria', 'Substituição bateria', 200.00),
('Troca de Correia', 'Subst correia dentada', 350.00),
('Ar Condicionado', 'Manutenção do ar', 220.00),
('Escapamento', 'Reparo do escapamento', 320.00),
('Elétrica', 'Serviços elétricos', 280.00),
('Funilaria', 'Reparo de lataria', 600.00),
('Inspeção Geral', 'Inspeção completa', 150.00);

SELECT * FROM Mecanico;
INSERT INTO Mecanico (CPF, Nome_Mecanico, Endereço) VALUES  -- REINSERIR APÓS MUDANÇAS EM EQUIPE
('12345678901', 'Carlos Silva', 'Rua A, 123'),
('23456789012', 'Ana Souza', 'Rua B, 456'),
('34567890123', 'Pedro Lima', 'Avenida C, 789'),
('45678901234', 'Maria Oliveira', 'Travessa D, 101'),
('56789012345', 'João Santos', 'Estrada E, 202'),
('67890123456', 'Lucas Martins', 'Alameda F, 303'),
('78901234567', 'Fernanda Costa', 'Praça G, 404'),
('89012345678', 'Juliana Ribeiro', 'Largo H, 505'),
('90123456789', 'Ricardo Alves', 'Rua I, 606'),
('01234567890', 'Patrícia Nunes', 'Avenida J, 707');

SELECT * FROM Ordem_de_Serviço;
INSERT INTO Ordem_de_Serviço (IdCliente, IdVeiculo, IdEquipe, Data_Emissao, Status_OS, Data_Conclusao) VALUES
(1, 1, 1, '2024-01-01','Processado', '2024-01-03'),
(1, 2, 1, '2024-01-04','Cancelado', NULL),
(2, 3, 2, '2024-01-05','Finalizado', '2024-01-07'),
(3, 4, 2, '2024-01-08','Finalizado', '2024-01-14'),
(4, 5, 3, '2024-01-09','Processado', '2024-01-11'),
(5, 6, 3, '2024-01-12', 'Finalizado', '2024-01-20'),
(5, 7, 3, '2024-01-13','Processado', '2024-01-15'),
(6, 8, 4, '2024-01-16', 'Finalizado', '2024-01-25'),
(7, 9, 4, '2024-01-17','Processado', '2024-01-19'),
(8, 10, 4, '2024-01-20','Cancelado', NULL),
(9, 11, 4, '2024-01-21','Processado', '2024-01-23'),
(10, 12, 3, '2024-01-24', 'Finalizado', '2024-01-30');



-- RELAÇÕES --
SELECT * FROM Relação_Equipe_Mecanico;
INSERT INTO Relação_Equipe_Mecanico (CPF, IdEquipe)
	VALUES
('12345678901',1),
('23456789012',1),
('34567890123',1),
('12345678901',2),
('45678901234',2),
('56789012345',2),
('23456789012',3),
('45678901234',3),
('56789012345',4),
('67890123456',4),
('78901234567',4),
('89012345678',4),
('90123456789',4),
('01234567890',3);

SELECT * FROM Relação_Mecanico_Servico;
INSERT INTO Relação_Mecanico_Servico (CPF, IdServico) VALUES
('12345678901', 1),
('12345678901', 2),
('23456789012', 3),
('23456789012', 4),
('34567890123', 5),
('34567890123', 6),
('45678901234', 7),
('45678901234', 8),
('56789012345', 9),
('56789012345', 10),
('67890123456', 11),
('67890123456', 12),
('78901234567', 13),
('78901234567', 1),
('89012345678', 2),
('89012345678', 3),
('90123456789', 4),
('90123456789', 5),
('01234567890', 6),
('01234567890', 7),
('12345678901', 8),
('23456789012', 9),
('34567890123', 10),
('45678901234', 11),
('56789012345', 12),
('67890123456', 13),
('78901234567', 1),
('89012345678', 2),
('90123456789', 3),
('01234567890', 4);


SELECT * FROM Relação_OS_Servico;
INSERT INTO Relação_OS_Servico (Ordem_de_Servico, IdServico) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),
(6, 13),
(7, 1),
(7, 2),
(8, 3),
(8, 4),
(9, 5),
(9, 6),
(10, 7),
(11, 8),
(11, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13);



-- ------------------ CONSULTAS -----------------------

-- Consulta idade dos funcionários
SELECT IdCliente, Nome_Cliente, TIMESTAMPDIFF(YEAR, Data_Nascimento, CURDATE()) AS Idade
FROM Cliente;

-- Consulta serviços prestados ao cliente x ordenando por Valor 
SELECT 
	IdVeiculo,
    Servico,
    S.Descricao AS Descricao_do_Servico,
    S.Valor AS Valor_do_Servico
FROM 
    Ordem_de_Serviço OS
INNER JOIN 
    Cliente C ON OS.IdCliente = C.IdCliente
INNER JOIN 
    Relação_OS_Servico ROS ON OS.Ordem_de_Servico = ROS.Ordem_de_Servico
INNER JOIN 
    Servico S ON ROS.IdServico = S.IdServico
WHERE 
    C.Nome_Cliente = 'Patricia Mendes'
ORDER BY Valor_do_Servico DESC;


-- Consulta Ordens que estão como Processados e são maiores que zero
SELECT Status_OS, count(Status_OS) AS Contagem 
FROM ordem_de_serviço
WHERE Status_OS='Processado'
group by Status_OS
HAVING Contagem >0;


-- Consulta Orçamento de todos os clientes, ordenando por cliente, carro e status

SELECT C.Nome_Cliente, V.IdVeiculo, OS.Status_OS, SUM(S.Valor) AS OS_Orçamento
FROM Cliente C
INNER JOIN Veiculo V ON C.IdCliente=V.IdCliente
INNER JOIN Ordem_de_Serviço OS ON V.IdVeiculo = OS.IdVeiculo
INNER JOIN Relação_OS_Servico ROS ON ROS.Ordem_de_Servico=OS.Ordem_de_Servico
INNER JOIN Servico S ON S.IdServico=ROS.IdServico
group by C.Nome_Cliente, V.IdVeiculo, OS.Status_OS
ORDER BY OS.Status_OS



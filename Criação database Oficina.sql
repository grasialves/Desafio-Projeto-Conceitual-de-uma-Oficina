-- INSERÇÃO E CONSULTA DE DADOS

select * FROm Equipe;

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
('Patricia Mendes', '01234567890', '1991-10-03'),
('Gustavo Teixeira', '11223344556', '1986-12-25'),
('Camila Rocha', '22334455667', '1994-03-19'),
('Bruno Barros', '33445566778', '1982-08-08'),
('Beatriz Fonseca', '44556677889', '1995-05-05'),
('Rafael Martins', '55667788990', '1987-01-22'),
('Larissa Gomes', '66778899001', '1993-07-30'),
('Felipe Araujo', '77889900112', '1981-02-28'),
('Renata Ribeiro', '88990011223', '1996-09-14'),
('Gabriel Fernandes', '99001122334', '1984-12-02'),
('Amanda Costa', '10111213141', '1978-11-27');


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
(10, 'Boleto'),
(11, 'Dinheiro'),
(12, 'Cartão'),
(12, 'Boleto'),
(13, 'Dinheiro'),
(14, 'Cartão'),
(15, 'Boleto'),
(16, 'Dinheiro'),
(17, 'Cartão'),
(18, 'Boleto'),
(19, 'Dinheiro'),
(19, 'Cartão'),
(20, 'Boleto');


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
(10, 'Citroën', 'KLM5678', 'Cinza'),
(11, 'BMW', 'NOP6789', 'Vermelho'),
(12, 'Mercedes', 'QRS7890', 'Prata'),
(12, 'Audi', 'TUV8901', 'Preto'),
(13, 'Mitsubishi', 'WXY9012', 'Branco'),
(14, 'Volvo', 'ZAB0123', 'Azul'),
(15, 'Lexus', 'CDE1234', 'Preto'),
(16, 'Jeep', 'FGH2345', 'Verde'),
(17, 'Mazda', 'IJK3456', 'Vermelho'),
(18, 'Subaru', 'LMN4567', 'Cinza'),
(19, 'Jaguar', 'OPQ5678', 'Prata'),
(20, 'Land Rover', 'RST6789', 'Branco');


INSERT INTO Equipe (Nome_Equipe, IdVeiculo)  -- RETIRAR AS REPETIÇÕES (ID VEICULO NÃO CABE AQUI) ALTERAR NO MODELO RELACIONAL
VALUES
('Mecânica Geral', 1),
('Mecânica Geral', 2),
('Pintura e Funilaria', 3),
('Pintura e Funilaria', 4),
('Elétrica', 5),
('Elétrica', 6),
('Troca de Óleo e Filtros', 7),
('Troca de Óleo e Filtros', 8),
('Alinhamento e Balanceam.', 9),
('Alinhamento e Balanceam.', 10),
('Mecânica Geral', 11),
('Pintura e Funilaria', 12),
('Elétrica', 13),
('Troca de Óleo e Filtros', 14),
('Alinhamento e Balanceam.', 15),
('Mecânica Geral', 16),
('Pintura e Funilaria', 17),
('Elétrica', 18),
('Troca de Óleo e Filtros', 19),
('Alinhamento e Balanceam.', 20);

INSERT INTO Mao_de_Obra (Servico, Descricao, Valor) 
VALUES
('Troca de Óleo', 'Óleo e filtro', 150.00),
('Revisão Completa', 'Revisão geral', 500.00),
('Alinhamento', 'Alinhamento de rodas', 100.00),
('Balanceamento', 'Balanceamento rodas', 80.00),
('Pintura', 'Pintura completa', 1200.00),
('Troca de Pneus', 'Substituição de pneus', 400.00),
('Freios', 'Verificação e troca', 300.00),
('Suspensão', 'Manutenção suspensão', 450.00),
('Limpeza de Bicos', 'Limpeza bicos injetores', 250.00),
('Troca de Bateria', 'Substituição bateria', 200.00),
('Troca de Velas', 'Substituição de velas', 180.00),
('Troca de Correia', 'Subst correia dentada', 350.00),
('Ar Condicionado', 'Manutenção do ar', 220.00),
('Escapamento', 'Reparo do escapamento', 320.00),
('Diagnóstico', 'Diagnóstico eletrônico', 100.00),
('Elétrica', 'Serviços elétricos', 280.00),
('Funilaria', 'Reparo de lataria', 600.00),
('Polimento', 'Polimento completo', 200.00),
('Troca Parafusos', 'Substituição parafusos', 50.00),
('Inspeção Geral', 'Inspeção completa', 150.00);


INSERT INTO Mecanico (CPF, Nome_Mecanico, Endereço, IdEquipe, IdServico) VALUES  -- REINSERIR APÓS MUDANÇAS EM EQUIPE
('12345678901', 'Carlos Silva', 'Rua A, 123', 1, 1),
('23456789012', 'Ana Souza', 'Rua B, 456', 2, 2),
('34567890123', 'Pedro Lima', 'Avenida C, 789', 3, 3),
('45678901234', 'Maria Oliveira', 'Travessa D, 101', 4, 4),
('56789012345', 'João Santos', 'Estrada E, 202', 5, 5),
('67890123456', 'Lucas Martins', 'Alameda F, 303', 1, 6),
('78901234567', 'Fernanda Costa', 'Praça G, 404', 2, 7),
('89012345678', 'Juliana Ribeiro', 'Largo H, 505', 3, 8),
('90123456789', 'Ricardo Alves', 'Rua I, 606', 4, 9),
('01234567890', 'Patrícia Nunes', 'Avenida J, 707', 5, 10);
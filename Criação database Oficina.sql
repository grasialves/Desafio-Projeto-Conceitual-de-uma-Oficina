-- CRIAÇÃO DO BANCO DE DADOS DE UMA OFICINA - DESAFIO DIO
-- AUTOR: GRASIELE ALVES GOMES
-- DATA CRIAÇÃO: 27/05/24

-- Cria Database
CREATE DATABASE Oficina;

-- Seleciona Database
USE Oficina;

-- Cria Tabelas 

	-- CLIENTE
    
CREATE TABLE Cliente (
	IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Cliente VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Data_Nascimento DATE,
    CONSTRAINT Cliente_CPF_UN UNIQUE(CPF)
    );


    -- PAGAMENTO
    
CREATE TABLE Pagamento (
	IdPagamento INT AUTO_INCREMENT PRIMARY KEY,
	IdCliente INT,
    Tipo_Pagamento ENUM('Cartão','Boleto','Dinheiro'),
	CONSTRAINT Pagamento_IdCliente_FK FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
    );    
    

    -- VEICULO
    
CREATE TABLE Veiculo (
    IdVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT,
    Marca VARCHAR(20) NOT NULL,
    Placa CHAR(7) NOT NULL,
    Cor VARCHAR(20) NOT NULL,
    CONSTRAINT Veiculo_IdCliente_FK FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
    );
 
 
 -- MECANICO
 
CREATE TABLE Mecanico (
	CPF CHAR(11) PRIMARY KEY,
    Nome_Mecanico VARCHAR(25) NOT NULL,
    Endereço VARCHAR(45)
    );

   
    -- EQUIPE
    
CREATE TABLE Equipe (
	IdEquipe INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Equipe VARCHAR(25) NOT NULL
    );
    

      
 -- MÃO DE OBRA
 
CREATE TABLE Servico (
	IdServico INT AUTO_INCREMENT PRIMARY KEY,
    Servico VARCHAR(25) NOT NULL,
    Descricao VARCHAR(25) NOT NULL,
    Valor FLOAT
    );

 
    -- ORDEM DE SERVIÇO
    
CREATE TABLE Ordem_de_Serviço (
	Ordem_de_Servico INT AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT,
    IdVeiculo INT,
    IdEquipe INT,
    Data_Emissao DATE NOT NULL,
    Status_OS ENUM('Processado','Cancelado','Finalizado'),
    Data_Conclusao DATE,
	CONSTRAINT OS_IdCliente_FK FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
    CONSTRAINT OS_IdEquipe_FK FOREIGN KEY (IdEquipe) REFERENCES Equipe(IdEquipe),
    CONSTRAINT OS_IdVeiculo_FK FOREIGN KEY (IdVeiculo) REFERENCES Veiculo(IdVeiculo)
    );
    

 -- RELAÇÃO EQUIPE MECANICO
 
CREATE TABLE Relação_Equipe_Mecanico (
	CPF CHAR(11),
    IdEquipe INT,
	CONSTRAINT Relaao_IdEquipe_FK FOREIGN KEY (IdEquipe) REFERENCES Equipe(IdEquipe),
	CONSTRAINT Relaao_CPF_FK FOREIGN KEY (CPF) REFERENCES Mecanico(CPF)
    ); 
    
  
  -- RELAÇÃO MECANICO SERVIÇO

CREATE TABLE Relação_Mecanico_Servico (
	CPF CHAR(11),
    IdServico INT,
	CONSTRAINT Relacao_IdServico_FK FOREIGN KEY (IdServico) REFERENCES Servico(IdServico),
	CONSTRAINT Relacao_CPF_FK FOREIGN KEY (CPF) REFERENCES Mecanico(CPF)
    ); 


  -- RELAÇÃO OS SERVIÇO
  
CREATE TABLE Relação_OS_Servico (
	Ordem_de_Servico INT,
    IdServico INT,
	CONSTRAINT Relacao_OS_Servico_OS_FK FOREIGN KEY (Ordem_de_Servico) REFERENCES Ordem_de_Serviço(Ordem_de_Servico),
	CONSTRAINT Relacao_OS_Servico_IdServico_FK FOREIGN KEY (IdServico) REFERENCES Servico(IdServico)
    ); 
    

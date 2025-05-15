-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/05/2025 às 01:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercado`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` bigint(14) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cpf` bigint(11) DEFAULT NULL,
  `rg` bigint(7) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nome`, `telefone`, `endereco`, `cpf`, `rg`, `email`, `data_cadastro`) VALUES
(1, 'Pedro Ferreira', 987654321, 'Rua a', 12345678900, 1234564, 'pedro.ferreira@email.com', '2025-05-06'),
(2, 'Maria Oliveira', 998765432, 'Rua b', 98765432100, 9876543, 'maria.oliveira@email.com', '2025-04-15'),
(3, 'Carlos Santos', 923456789, 'Rua c', 23456789012, 2345678, 'carlos.santos@email.com', '2025-03-22'),
(4, 'Fernanda Lima', 912345678, 'Rua d', 34567890123, 3456789, 'fernanda.lima@email.com', '2025-06-01'),
(5, 'João Pereira', 934567890, 'Rua g', 45678901234, 4567801, 'joao.pereira@email.com', '2025-02-10'),
(6, 'Beatriz Souza', 965432109, 'Rua h', 56789012345, 5678901, 'beatriz.souza@email.com', '2025-07-12'),
(7, 'Ricardo Alves', 923456789, 'Rua f', 67890123456, 6789012, 'ricardo.alves@email.com', '2025-01-30'),
(8, 'Juliana Rocha', 981234567, 'Rua j', 78901234567, 7890123, 'juliana.rocha@email.com', '2025-08-05'),
(9, 'Pedro Ferreira', 987654321, 'Rua a', 12345678900, 1234564, 'pedro.ferreira@email.com', '2025-05-06'),
(10, 'Maria Oliveira', 998765432, 'Rua b', 98765432100, 9876543, 'maria.oliveira@email.com', '2025-04-15'),
(11, 'Carlos Santos', 923456789, 'Rua c', 23456789012, 2345678, 'carlos.santos@email.com', '2025-03-22'),
(12, 'Fernanda Lima', 912345678, 'Rua d', 34567890123, 3456789, 'fernanda.lima@email.com', '2025-06-01'),
(13, 'João Pereira', 934567890, 'Rua g', 45678901234, 4567801, 'joao.pereira@email.com', '2025-02-10'),
(14, 'Beatriz Souza', 965432109, 'Rua h', 56789012345, 5678901, 'beatriz.souza@email.com', '2025-07-12'),
(15, 'Ricardo Alves', 923456789, 'Rua f', 67890123456, 6789012, 'ricardo.alves@email.com', '2025-01-30'),
(16, 'Juliana Rocha', 981234567, 'Rua j', 78901234567, 7890123, 'juliana.rocha@email.com', '2025-08-05'),
(17, 'Pedro Ferreira', 987654321, 'Rua a', 12345678900, 1234564, 'pedro.ferreira@email.com', '2025-05-06'),
(18, 'Maria Oliveira', 998765432, 'Rua b', 98765432100, 9876543, 'maria.oliveira@email.com', '2025-04-15'),
(19, 'Carlos Santos', 923456789, 'Rua c', 23456789012, 2345678, 'carlos.santos@email.com', '2025-03-22'),
(20, 'Fernanda Lima', 912345678, 'Rua d', 34567890123, 3456789, 'fernanda.lima@email.com', '2025-06-01'),
(21, 'João Pereira', 934567890, 'Rua g', 45678901234, 4567801, 'joao.pereira@email.com', '2025-02-10'),
(22, 'Beatriz Souza', 965432109, 'Rua h', 56789012345, 5678901, 'beatriz.souza@email.com', '2025-07-12'),
(23, 'Ricardo Alves', 923456789, 'Rua f', 67890123456, 6789012, 'ricardo.alves@email.com', '2025-01-30'),
(24, 'Juliana Rocha', 981234567, 'Rua j', 78901234567, 7890123, 'juliana.rocha@email.com', '2025-08-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `codigo_compra` bigint(20) DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `Nota_fiscal` varchar(45) DEFAULT NULL,
  `produtos_comprados` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco_compra` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `compra`
--

INSERT INTO `compra` (`id_compra`, `codigo_compra`, `data_compra`, `Nota_fiscal`, `produtos_comprados`, `descricao`, `preco_compra`) VALUES
(1, 202305010001, '2025-05-01', 'NF100001', 'Leite Integral', 'Caixa com 12 unidades', 59.88),
(2, 202305020002, '2025-05-02', 'NF100002', 'Arroz Branco', 'Pacote de 5kg', 19.5),
(3, 202305030003, '2025-05-03', 'NF100003', 'Sabonete Neutro', 'Kit com 6 unidades', 16.5),
(4, 202305040004, '2025-05-04', 'NF100004', 'Detergente Líquido', 'Caixa com 10 frascos', 39),
(5, 202305050005, '2025-05-05', 'NF100005', 'Chocolate Amargo', 'Barra 70% cacau', 7.3),
(6, 202305060006, '2025-05-06', 'NF100006', 'Refrigerante Cola', 'Pack com 6 latas', 33.6),
(7, 202305070007, '2025-05-07', 'NF100007', 'Macarrão Espaguete', 'Pacote de 1kg', 3.45);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cnpj` bigint(14) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` bigint(14) DEFAULT NULL,
  `historico_pedidos` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `categoria_produtos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`cnpj`, `nome`, `telefone`, `historico_pedidos`, `email`, `site`, `data_cadastro`, `categoria_produtos`) VALUES
(12345678000101, 'Laticínios Bella', 1133224455, 'Pedido #1023, #1045, #1101', 'contato@bellalaticinios.com', 'www.bellalaticinios.com', '2022-03-15', 'Laticínios'),
(23456789000102, 'Grãos do Sul', 21988776655, 'Pedido #2033, #2077', 'vendas@graosdosul.com.br', 'www.graosdosul.com.br', '2021-11-10', 'Grãos'),
(34567890000103, 'Higiene Total', 31999887766, 'Pedido #3045', 'sac@higienetotal.com', 'www.higienetotal.com', '2023-01-20', 'Higiene Pessoal'),
(45678901000104, 'Limpeza Rápida', 51988776644, 'Pedido #4050, #4052', 'contato@limpezarapida.com.br', 'www.limpezarapida.com.br', '2020-08-05', 'Produtos de Limpeza'),
(56789012000105, 'Doces & Sabores', 11997885566, 'Pedido #5055, #5056, #5060', 'vendas@docesesabores.com', 'www.docesesabores.com', '2024-02-14', 'Doces'),
(67890123000106, 'Bebidas Tropicais', 11998877665, 'Pedido #6010', 'atendimento@bebidastropicais.com', 'www.bebidastropicais.com', '2023-05-30', 'Bebidas'),
(78901234000107, 'Massas Delícia', 21997654321, 'Pedido #7011, #7012', 'contato@massasdelicia.com', 'www.massasdelicia.com', '2022-09-18', 'Massas'),
(89012345000108, 'Frescor Lácteo', 31996543210, 'Pedido #8033', 'sac@frescorlacteo.com.br', 'www.frescorlacteo.com.br', '2021-07-12', 'Laticínios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `Numero_cracha` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `CPF` bigint(11) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` bigint(14) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `funcao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`Numero_cracha`, `nome`, `CPF`, `data_nascimento`, `telefone`, `endereco`, `funcao`) VALUES
(101, 'Ana Beatriz Silva', 12345678901, '1990-04-15', 11987654321, 'Rua das Flores, 123', 'Atendente'),
(102, 'Carlos Henrique Lima', 23456789012, '1985-09-22', 21998765432, 'Av. Paulista, 1000', 'Gerente'),
(103, 'Mariana Oliveira', 34567890123, '1992-11-03', 31991234567, 'Rua A, 45', 'Caixa'),
(104, 'João Pedro Rocha', 45678901234, '1988-01-19', 71999887766, 'Rua B, 78', 'Estoquista'),
(105, 'Fernanda Costa', 56789012345, '1995-06-10', 61999998877, 'Rua C, 89', 'Supervisora'),
(106, 'Lucas Almeida', 67890123456, '1993-03-27', 51988776655, 'Av. Central, 234', 'Repositor'),
(107, 'Bruna Santos', 78901234567, '1987-08-14', 41987654321, 'Rua D, 12', 'Segurança');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `codigo_produto` int(11) DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `nota_fiscal` varchar(60) DEFAULT NULL,
  `categoria_produto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `codigo_produto`, `data_validade`, `preco`, `nota_fiscal`, `categoria_produto`) VALUES
(1, 'Leite Integral', 1001, '2025-06-01', 4.99, 'NF123456789', 'Laticínios'),
(2, 'Arroz Branco', 1002, '2026-12-31', 19.5, 'NF987654321', 'Grãos'),
(3, 'Sabonete Neutro', 1003, '2027-03-15', 2.75, 'NF112233445', 'Higiene'),
(4, 'Detergente Líquido', 1004, '2026-09-10', 3.9, 'NF556677889', 'Limpeza'),
(5, 'Chocolate Amargo', 1005, '2025-11-25', 7.3, 'NF667788990', 'Doces'),
(6, 'Refrigerante Cola', 1006, '2025-08-20', 5.6, 'NF998877665', 'Bebidas'),
(7, 'Macarrão Espaguete', 1007, '2026-02-28', 3.45, 'NF445566778', 'Massas');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`Numero_cracha`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

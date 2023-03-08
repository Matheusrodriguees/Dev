-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07-Mar-2023 às 14:02
-- Versão do servidor: 10.5.16-MariaDB
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id19471176_tection`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Contatos`
--

CREATE TABLE `Contatos` (
  `IdContato` int(11) NOT NULL,
  `NomeContato` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `EmailContato` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Mensagem` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Contatos`
--

INSERT INTO `Contatos` (`IdContato`, `NomeContato`, `EmailContato`, `Telefone`, `Mensagem`, `IdUsuario`) VALUES
(2, 'Lais', 'lais@teste', '112565325', 'Olá Mundo', 14),
(6, 'Simba', 'simba@Safari', '11994853110', 'help, I need somebody', 15),
(8, 'Lais', 'simba@Safari', '11995321454', 'Socorro', 15),
(9, 'Simba', 'laiscostast2@gmail.com', '11994853110', 'Teste EverSafely', 26),
(10, 'Helio ', 'helio@gmail.com', '1123456789', 'Olá Mundo', 26);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Enderecos`
--

CREATE TABLE `Enderecos` (
  `idEndereco` int(11) NOT NULL,
  `OrinLat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OrinLon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DestLat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DestLon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Enderecos`
--

INSERT INTO `Enderecos` (`idEndereco`, `OrinLat`, `OrinLon`, `DestLat`, `DestLon`, `endereco`) VALUES
(12, '-23.5412161', '-46.3423394', '-23.5570003', '-46.6612482', 'Teste'),
(13, '-23.5412161', '-46.3423394', '-23.5570003', '-46.6612482', 'Teste2'),
(14, '-20.905984', '-51.3703936', '-23.5570003', '-46.6612482', 'Rota Teste'),
(15, '-20.905984', '-51.3703936', '-23.528958', '-46.363582', 'Teste3'),
(16, '-20.905984', '-51.3703936', '-23.528958', '-46.363582', 'Escola'),
(19, '-23.4313222', '-46.3456765', '-23.529745028272583', '-46.36893551534145', 'Casa Lais - Fatec Ferraz'),
(20, '', '', '', '', ''),
(21, '-23.53002122971796', '-46.368821869315596', '-23.528958', '-46.363582', 'Teste3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Rotas`
--

CREATE TABLE `Rotas` (
  `IdRota` int(11) NOT NULL,
  `LocalDestino` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuario`
--

CREATE TABLE `Usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nome` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Telefone` int(11) DEFAULT NULL,
  `Email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Senha` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `recuperar_senha` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PerguntaSeguranca` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `RespostaSeguranca` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Usuario`
--

INSERT INTO `Usuario` (`IdUsuario`, `Nome`, `Telefone`, `Email`, `Senha`, `recuperar_senha`, `PerguntaSeguranca`, `RespostaSeguranca`) VALUES
(1, 'Lais Teste', 0, 'lais@teste.com', 'teste', NULL, 'Nome da mãe', 'Dalva'),
(2, 'helio', NULL, 'helio@gmail.com', '1234', NULL, 'nome da mae', 'teste'),
(4, 'Helio', NULL, 'teste2@gmail.com', '1234', NULL, 'nome mae', 'teste'),
(5, 'Nome teste', NULL, 'email teste', 'senha teste', NULL, 'pergunta teste', 'resposta teste'),
(6, 'Matheus', NULL, 'matheus@teste', '1234', NULL, 'Nome da mãe', 'teste'),
(7, '', NULL, '', '', NULL, '', ''),
(11, '', NULL, 'teste@teste', '', NULL, '', ''),
(12, '', NULL, 'teste', 'teste', NULL, '', ''),
(13, 'Lucas', NULL, 'lucas@teste', '1234', NULL, 'Nome da mãe', 'Dalva'),
(14, 'Morango ', NULL, 'morango@fruta', 'morango', NULL, 'valor2', 'Moranga'),
(15, 'Gustavo', NULL, 'gustavo@teste', '123456', NULL, 'valor3', 'xuxu'),
(16, 'Mario Andrade', NULL, 'mario.andrade@gmail.com', '12345', NULL, 'Nome do Primeiro Pet', 'Rex'),
(17, 'Marcos', NULL, 'marcos@gmail.com', '1234', NULL, 'Comida Favorita', 'HotDog'),
(21, 'Gleice', NULL, 'gleice@teste', '12345', NULL, 'Comida Favorita', 'Morango'),
(22, 'Palmeiras', NULL, 'palmeirasnaotemm@gmail', 'palmeiras', NULL, 'Nome da Mãe', 'palmeiras'),
(23, 'luis', NULL, 'luis.abc@gmail.com', '1234', NULL, 'Nome da Mãe', 'as'),
(24, 'Bianca', NULL, 'b@email.com', 'bia', NULL, 'Nome do Primeiro Pet', 'meg'),
(25, 'Vitor Francisco da Silva', NULL, 'vitorfdasillva@gmail.com', '46422872', NULL, 'Comida Favorita', 'feijoada'),
(26, 'Lais Costa', NULL, 'laiscostast@gmail.com', '123456', NULL, 'Nome da Mãe', 'Dalva'),
(27, 'gleice', NULL, 'gleice.anunciacao@fatec.sp.gov.br', '1234', NULL, 'Nome da Mãe', 'Renilda'),
(29, 'gleice', NULL, 'gleice@fatec.sp.gov.br', '1234', NULL, 'Nome da Mãe', 'Renilda'),
(30, 'Valentina', NULL, 'valentina@teste', '123456', NULL, 'Nome do Primeiro Pet', 'simba'),
(31, 'matheus', NULL, 'matheus.122@gmail.com', '12345', NULL, 'valor1', 'aa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Contatos`
--
ALTER TABLE `Contatos`
  ADD PRIMARY KEY (`IdContato`,`IdUsuario`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `Enderecos`
--
ALTER TABLE `Enderecos`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices para tabela `Rotas`
--
ALTER TABLE `Rotas`
  ADD PRIMARY KEY (`IdRota`,`IdUsuario`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD UNIQUE KEY `email` (`Email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Contatos`
--
ALTER TABLE `Contatos`
  MODIFY `IdContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `Enderecos`
--
ALTER TABLE `Enderecos`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `Rotas`
--
ALTER TABLE `Rotas`
  MODIFY `IdRota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `Contatos`
--
ALTER TABLE `Contatos`
  ADD CONSTRAINT `Contatos_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`IdUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `Rotas`
--
ALTER TABLE `Rotas`
  ADD CONSTRAINT `Rotas_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`IdUsuario`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2017 at 02:53 AM
-- Server version: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melhorqueofb`
--

-- --------------------------------------------------------

--
-- Table structure for table `evento`
--

CREATE TABLE `evento` (
  `idevento` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `quantidade_gente_min` int(11) DEFAULT NULL,
  `quantidade_gente_max` int(11) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  `horario_chegada` time DEFAULT NULL,
  `horario_inicio` time NOT NULL,
  `tempo_espera_max` float DEFAULT NULL,
  `evento_tipo_idevento_tipo` int(11) NOT NULL,
  `organizador_idpessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_has_regra`
--

CREATE TABLE `evento_has_regra` (
  `evento_idevento` int(11) NOT NULL,
  `evento_regra_idevento_regra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_lista`
--

CREATE TABLE `evento_lista` (
  `seq` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `evento_lista_tipo_idevento_lista_tipo` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `lista_level` int(11) NOT NULL,
  `item_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_lista_item`
--

CREATE TABLE `evento_lista_item` (
  `seq` int(11) NOT NULL,
  `evento_lista_seq` int(11) NOT NULL,
  `evento_lista_evento_idevento` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `quantidade_desejada_min` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_lista_tipo`
--

CREATE TABLE `evento_lista_tipo` (
  `idevento_lista_tipo` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_organizacao`
--

CREATE TABLE `evento_organizacao` (
  `evento_idevento` int(11) NOT NULL,
  `pessoa_idpessoa` int(11) NOT NULL,
  `level` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_participante`
--

CREATE TABLE `evento_participante` (
  `participante_idpessoa` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `participacao_status_idparticipacao_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_regra`
--

CREATE TABLE `evento_regra` (
  `idevento_regra` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_tipo`
--

CREATE TABLE `evento_tipo` (
  `idevento_tipo` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_visibilidade`
--

CREATE TABLE `evento_visibilidade` (
  `evento_visibilidade_tipo_idevento_visibilidade_tipo` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evento_visibilidade_tipo`
--

CREATE TABLE `evento_visibilidade_tipo` (
  `idevento_visibilidade_tipo` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_por_pessoa`
--

CREATE TABLE `item_por_pessoa` (
  `pessoa_idpessoa` int(11) NOT NULL,
  `evento_lista_item_seq` int(11) NOT NULL,
  `evento_lista_item_evento_lista_seq` int(11) NOT NULL,
  `evento_lista_item_evento_lista_evento_idevento` int(11) NOT NULL,
  `quantidade` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `participacao_condicao`
--

CREATE TABLE `participacao_condicao` (
  `idparticipacao_condicao` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `participacao_status`
--

CREATE TABLE `participacao_status` (
  `idparticipacao_status` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `participante_has_condicao`
--

CREATE TABLE `participante_has_condicao` (
  `participacao_condicao_idparticipacao_condicao` int(11) NOT NULL,
  `evento_participante_participante_idpessoa` int(11) NOT NULL,
  `evento_participante_evento_idevento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pessoa`
--

CREATE TABLE `pessoa` (
  `idpessoa` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `nome_completo` varchar(100) GENERATED ALWAYS AS (concat(`nome`,' ',`sobrenome`)) VIRTUAL,
  `data_nascimento` date NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pessoa_amizade`
--

CREATE TABLE `pessoa_amizade` (
  `pessoa_idpessoa1` int(11) NOT NULL,
  `pessoa_idpessoa2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_has_regra`
--

CREATE TABLE `tipo_has_regra` (
  `evento_tipo_idevento_tipo` int(11) NOT NULL,
  `evento_regra_idevento_regra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idevento`),
  ADD KEY `fk_evento_evento_tipo1_idx` (`evento_tipo_idevento_tipo`),
  ADD KEY `fk_evento_pessoa1_idx` (`organizador_idpessoa`);

--
-- Indexes for table `evento_has_regra`
--
ALTER TABLE `evento_has_regra`
  ADD PRIMARY KEY (`evento_idevento`,`evento_regra_idevento_regra`),
  ADD KEY `fk_evento_has_evento_regra_evento_regra1_idx` (`evento_regra_idevento_regra`),
  ADD KEY `fk_evento_has_evento_regra_evento1_idx` (`evento_idevento`);

--
-- Indexes for table `evento_lista`
--
ALTER TABLE `evento_lista`
  ADD PRIMARY KEY (`seq`,`evento_idevento`),
  ADD KEY `fk_evento_lista_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_evento_lista_evento_lista_tipo1_idx` (`evento_lista_tipo_idevento_lista_tipo`);

--
-- Indexes for table `evento_lista_item`
--
ALTER TABLE `evento_lista_item`
  ADD PRIMARY KEY (`seq`,`evento_lista_seq`,`evento_lista_evento_idevento`),
  ADD KEY `fk_evento_lista_item_evento_lista1_idx` (`evento_lista_seq`,`evento_lista_evento_idevento`);

--
-- Indexes for table `evento_lista_tipo`
--
ALTER TABLE `evento_lista_tipo`
  ADD PRIMARY KEY (`idevento_lista_tipo`);

--
-- Indexes for table `evento_organizacao`
--
ALTER TABLE `evento_organizacao`
  ADD PRIMARY KEY (`evento_idevento`,`pessoa_idpessoa`),
  ADD KEY `fk_evento_organizacao_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_evento_organizacao_pessoa1_idx` (`pessoa_idpessoa`);

--
-- Indexes for table `evento_participante`
--
ALTER TABLE `evento_participante`
  ADD PRIMARY KEY (`participante_idpessoa`,`evento_idevento`),
  ADD KEY `fk_evento_participante_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_evento_participante_participacao_status1_idx` (`participacao_status_idparticipacao_status`),
  ADD KEY `fk_evento_participante_pessoa1_idx` (`participante_idpessoa`);

--
-- Indexes for table `evento_regra`
--
ALTER TABLE `evento_regra`
  ADD PRIMARY KEY (`idevento_regra`);

--
-- Indexes for table `evento_tipo`
--
ALTER TABLE `evento_tipo`
  ADD PRIMARY KEY (`idevento_tipo`);

--
-- Indexes for table `evento_visibilidade`
--
ALTER TABLE `evento_visibilidade`
  ADD PRIMARY KEY (`evento_visibilidade_tipo_idevento_visibilidade_tipo`,`evento_idevento`),
  ADD KEY `fk_evento_visibilidade_evento_visibilidade_tipo1_idx` (`evento_visibilidade_tipo_idevento_visibilidade_tipo`),
  ADD KEY `fk_evento_visibilidade_evento1_idx` (`evento_idevento`);

--
-- Indexes for table `evento_visibilidade_tipo`
--
ALTER TABLE `evento_visibilidade_tipo`
  ADD PRIMARY KEY (`idevento_visibilidade_tipo`);

--
-- Indexes for table `item_por_pessoa`
--
ALTER TABLE `item_por_pessoa`
  ADD PRIMARY KEY (`pessoa_idpessoa`,`evento_lista_item_seq`,`evento_lista_item_evento_lista_seq`,`evento_lista_item_evento_lista_evento_idevento`),
  ADD KEY `fk_item_por_pessoa_pessoa1_idx` (`pessoa_idpessoa`),
  ADD KEY `fk_item_por_pessoa_evento_lista_item1_idx` (`evento_lista_item_seq`,`evento_lista_item_evento_lista_seq`,`evento_lista_item_evento_lista_evento_idevento`);

--
-- Indexes for table `participacao_condicao`
--
ALTER TABLE `participacao_condicao`
  ADD PRIMARY KEY (`idparticipacao_condicao`);

--
-- Indexes for table `participacao_status`
--
ALTER TABLE `participacao_status`
  ADD PRIMARY KEY (`idparticipacao_status`);

--
-- Indexes for table `participante_has_condicao`
--
ALTER TABLE `participante_has_condicao`
  ADD PRIMARY KEY (`participacao_condicao_idparticipacao_condicao`,`evento_participante_participante_idpessoa`,`evento_participante_evento_idevento`),
  ADD KEY `fk_participante_has_condicao_participacao_condicao1_idx` (`participacao_condicao_idparticipacao_condicao`),
  ADD KEY `fk_participante_has_condicao_evento_participante1_idx` (`evento_participante_participante_idpessoa`,`evento_participante_evento_idevento`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idpessoa`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `pessoa_amizade`
--
ALTER TABLE `pessoa_amizade`
  ADD PRIMARY KEY (`pessoa_idpessoa1`,`pessoa_idpessoa2`),
  ADD KEY `fk_pessoa_amizade_pessoa1_idx` (`pessoa_idpessoa1`),
  ADD KEY `fk_pessoa_amizade_pessoa2_idx` (`pessoa_idpessoa2`);

--
-- Indexes for table `tipo_has_regra`
--
ALTER TABLE `tipo_has_regra`
  ADD PRIMARY KEY (`evento_tipo_idevento_tipo`,`evento_regra_idevento_regra`),
  ADD KEY `fk_tipo_has_regra_evento_tipo1_idx` (`evento_tipo_idevento_tipo`),
  ADD KEY `fk_tipo_has_regra_evento_regra1_idx` (`evento_regra_idevento_regra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `idevento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_lista`
--
ALTER TABLE `evento_lista`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_lista_item`
--
ALTER TABLE `evento_lista_item`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_lista_tipo`
--
ALTER TABLE `evento_lista_tipo`
  MODIFY `idevento_lista_tipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_regra`
--
ALTER TABLE `evento_regra`
  MODIFY `idevento_regra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_tipo`
--
ALTER TABLE `evento_tipo`
  MODIFY `idevento_tipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_visibilidade_tipo`
--
ALTER TABLE `evento_visibilidade_tipo`
  MODIFY `idevento_visibilidade_tipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `participacao_condicao`
--
ALTER TABLE `participacao_condicao`
  MODIFY `idparticipacao_condicao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `participacao_status`
--
ALTER TABLE `participacao_status`
  MODIFY `idparticipacao_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `fk_evento_evento_tipo1` FOREIGN KEY (`evento_tipo_idevento_tipo`) REFERENCES `evento_tipo` (`idevento_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_pessoa1` FOREIGN KEY (`organizador_idpessoa`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_has_regra`
--
ALTER TABLE `evento_has_regra`
  ADD CONSTRAINT `fk_evento_has_evento_regra_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_has_evento_regra_evento_regra1` FOREIGN KEY (`evento_regra_idevento_regra`) REFERENCES `evento_regra` (`idevento_regra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_lista`
--
ALTER TABLE `evento_lista`
  ADD CONSTRAINT `fk_evento_lista_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_lista_evento_lista_tipo1` FOREIGN KEY (`evento_lista_tipo_idevento_lista_tipo`) REFERENCES `evento_lista_tipo` (`idevento_lista_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_lista_item`
--
ALTER TABLE `evento_lista_item`
  ADD CONSTRAINT `fk_evento_lista_item_evento_lista1` FOREIGN KEY (`evento_lista_seq`,`evento_lista_evento_idevento`) REFERENCES `evento_lista` (`seq`, `evento_idevento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_organizacao`
--
ALTER TABLE `evento_organizacao`
  ADD CONSTRAINT `fk_evento_organizacao_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_organizacao_pessoa1` FOREIGN KEY (`pessoa_idpessoa`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_participante`
--
ALTER TABLE `evento_participante`
  ADD CONSTRAINT `fk_evento_participante_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_participante_participacao_status1` FOREIGN KEY (`participacao_status_idparticipacao_status`) REFERENCES `participacao_status` (`idparticipacao_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_participante_pessoa1` FOREIGN KEY (`participante_idpessoa`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evento_visibilidade`
--
ALTER TABLE `evento_visibilidade`
  ADD CONSTRAINT `fk_evento_visibilidade_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_visibilidade_evento_visibilidade_tipo1` FOREIGN KEY (`evento_visibilidade_tipo_idevento_visibilidade_tipo`) REFERENCES `evento_visibilidade_tipo` (`idevento_visibilidade_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_por_pessoa`
--
ALTER TABLE `item_por_pessoa`
  ADD CONSTRAINT `fk_item_por_pessoa_evento_lista_item1` FOREIGN KEY (`evento_lista_item_seq`,`evento_lista_item_evento_lista_seq`,`evento_lista_item_evento_lista_evento_idevento`) REFERENCES `evento_lista_item` (`seq`, `evento_lista_seq`, `evento_lista_evento_idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_por_pessoa_pessoa1` FOREIGN KEY (`pessoa_idpessoa`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participante_has_condicao`
--
ALTER TABLE `participante_has_condicao`
  ADD CONSTRAINT `fk_participante_has_condicao_evento_participante1` FOREIGN KEY (`evento_participante_participante_idpessoa`,`evento_participante_evento_idevento`) REFERENCES `evento_participante` (`participante_idpessoa`, `evento_idevento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_participante_has_condicao_participacao_condicao1` FOREIGN KEY (`participacao_condicao_idparticipacao_condicao`) REFERENCES `participacao_condicao` (`idparticipacao_condicao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pessoa_amizade`
--
ALTER TABLE `pessoa_amizade`
  ADD CONSTRAINT `fk_pessoa_amizade_pessoa1` FOREIGN KEY (`pessoa_idpessoa2`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pessoa_amizade_pessoa2` FOREIGN KEY (`pessoa_idpessoa1`) REFERENCES `pessoa` (`idpessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tipo_has_regra`
--
ALTER TABLE `tipo_has_regra`
  ADD CONSTRAINT `fk_tipo_has_regra_evento_regra1` FOREIGN KEY (`evento_regra_idevento_regra`) REFERENCES `evento_regra` (`idevento_regra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_has_regra_evento_tipo1` FOREIGN KEY (`evento_tipo_idevento_tipo`) REFERENCES `evento_tipo` (`idevento_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

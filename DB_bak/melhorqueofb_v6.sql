-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2017 at 09:30 PM
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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add bairro', 7, 'add_bairro'),
(20, 'Can change bairro', 7, 'change_bairro'),
(21, 'Can delete bairro', 7, 'delete_bairro'),
(22, 'Can add estado', 8, 'add_estado'),
(23, 'Can change estado', 8, 'change_estado'),
(24, 'Can delete estado', 8, 'delete_estado'),
(25, 'Can add evento', 9, 'add_evento'),
(26, 'Can change evento', 9, 'change_evento'),
(27, 'Can delete evento', 9, 'delete_evento'),
(28, 'Can add evento has regra', 10, 'add_eventohasregra'),
(29, 'Can change evento has regra', 10, 'change_eventohasregra'),
(30, 'Can delete evento has regra', 10, 'delete_eventohasregra'),
(31, 'Can add evento lista', 11, 'add_eventolista'),
(32, 'Can change evento lista', 11, 'change_eventolista'),
(33, 'Can delete evento lista', 11, 'delete_eventolista'),
(34, 'Can add evento lista item', 12, 'add_eventolistaitem'),
(35, 'Can change evento lista item', 12, 'change_eventolistaitem'),
(36, 'Can delete evento lista item', 12, 'delete_eventolistaitem'),
(37, 'Can add evento lista tipo', 13, 'add_eventolistatipo'),
(38, 'Can change evento lista tipo', 13, 'change_eventolistatipo'),
(39, 'Can delete evento lista tipo', 13, 'delete_eventolistatipo'),
(40, 'Can add evento organizacao', 14, 'add_eventoorganizacao'),
(41, 'Can change evento organizacao', 14, 'change_eventoorganizacao'),
(42, 'Can delete evento organizacao', 14, 'delete_eventoorganizacao'),
(43, 'Can add evento participante', 15, 'add_eventoparticipante'),
(44, 'Can change evento participante', 15, 'change_eventoparticipante'),
(45, 'Can delete evento participante', 15, 'delete_eventoparticipante'),
(46, 'Can add evento regra', 16, 'add_eventoregra'),
(47, 'Can change evento regra', 16, 'change_eventoregra'),
(48, 'Can delete evento regra', 16, 'delete_eventoregra'),
(49, 'Can add evento tipo', 17, 'add_eventotipo'),
(50, 'Can change evento tipo', 17, 'change_eventotipo'),
(51, 'Can delete evento tipo', 17, 'delete_eventotipo'),
(52, 'Can add item por pessoa', 18, 'add_itemporpessoa'),
(53, 'Can change item por pessoa', 18, 'change_itemporpessoa'),
(54, 'Can delete item por pessoa', 18, 'delete_itemporpessoa'),
(55, 'Can add municipio', 19, 'add_municipio'),
(56, 'Can change municipio', 19, 'change_municipio'),
(57, 'Can delete municipio', 19, 'delete_municipio'),
(58, 'Can add participacao condicao', 20, 'add_participacaocondicao'),
(59, 'Can change participacao condicao', 20, 'change_participacaocondicao'),
(60, 'Can delete participacao condicao', 20, 'delete_participacaocondicao'),
(61, 'Can add participacao status', 21, 'add_participacaostatus'),
(62, 'Can change participacao status', 21, 'change_participacaostatus'),
(63, 'Can delete participacao status', 21, 'delete_participacaostatus'),
(64, 'Can add participante has condicao', 22, 'add_participantehascondicao'),
(65, 'Can change participante has condicao', 22, 'change_participantehascondicao'),
(66, 'Can delete participante has condicao', 22, 'delete_participantehascondicao'),
(67, 'Can add pessoa', 23, 'add_pessoa'),
(68, 'Can change pessoa', 23, 'change_pessoa'),
(69, 'Can delete pessoa', 23, 'delete_pessoa'),
(70, 'Can add pessoa amizade', 24, 'add_pessoaamizade'),
(71, 'Can change pessoa amizade', 24, 'change_pessoaamizade'),
(72, 'Can delete pessoa amizade', 24, 'delete_pessoaamizade'),
(73, 'Can add pessoa orientacao sexual', 25, 'add_pessoaorientacaosexual'),
(74, 'Can change pessoa orientacao sexual', 25, 'change_pessoaorientacaosexual'),
(75, 'Can delete pessoa orientacao sexual', 25, 'delete_pessoaorientacaosexual'),
(76, 'Can add regiao', 26, 'add_regiao'),
(77, 'Can change regiao', 26, 'change_regiao'),
(78, 'Can delete regiao', 26, 'delete_regiao'),
(79, 'Can add tipo has regra', 27, 'add_tipohasregra'),
(80, 'Can change tipo has regra', 27, 'change_tipohasregra'),
(81, 'Can delete tipo has regra', 27, 'delete_tipohasregra');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$u7eM3SI5xmpu$WPvYxifLs4Bfw0mYx1cnUk1gk/TsGdLPbWbu84JBNI8=', NULL, 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2017-06-24 21:29:21.035197');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bairro`
--

CREATE TABLE `bairro` (
  `Id` int(11) NOT NULL,
  `Codigo` char(10) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Uf` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(4, 'auth', 'permission'),
(2, 'auth', 'user'),
(7, 'bma', 'bairro'),
(8, 'bma', 'estado'),
(9, 'bma', 'evento'),
(10, 'bma', 'eventohasregra'),
(11, 'bma', 'eventolista'),
(12, 'bma', 'eventolistaitem'),
(13, 'bma', 'eventolistatipo'),
(14, 'bma', 'eventoorganizacao'),
(15, 'bma', 'eventoparticipante'),
(16, 'bma', 'eventoregra'),
(17, 'bma', 'eventotipo'),
(18, 'bma', 'itemporpessoa'),
(19, 'bma', 'municipio'),
(20, 'bma', 'participacaocondicao'),
(21, 'bma', 'participacaostatus'),
(22, 'bma', 'participantehascondicao'),
(23, 'bma', 'pessoa'),
(24, 'bma', 'pessoaamizade'),
(25, 'bma', 'pessoaorientacaosexual'),
(26, 'bma', 'regiao'),
(27, 'bma', 'tipohasregra'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-06-24 21:25:37.577923'),
(2, 'auth', '0001_initial', '2017-06-24 21:25:48.613217'),
(3, 'admin', '0001_initial', '2017-06-24 21:25:51.004197'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-06-24 21:25:51.097963'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-06-24 21:25:52.378061'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-06-24 21:25:53.393920'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-06-24 21:25:54.253022'),
(8, 'auth', '0004_alter_user_username_opts', '2017-06-24 21:25:54.315509'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-06-24 21:25:55.035008'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-06-24 21:25:55.081898'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-06-24 21:25:55.160010'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-06-24 21:25:55.972333'),
(13, 'bma', '0001_initial', '2017-06-24 21:25:56.097324'),
(14, 'sessions', '0001_initial', '2017-06-24 21:25:57.081710');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `Id` int(11) NOT NULL,
  `CodigoUf` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Uf` char(2) NOT NULL,
  `Regiao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `horario_inicio` time DEFAULT NULL,
  `horario_fim` time DEFAULT NULL,
  `tempo_espera_max` float DEFAULT NULL,
  `banner_link` varchar(45) DEFAULT NULL,
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
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `Id` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Uf` char(2) NOT NULL
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
  `data_nascimento` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `retrato_link` varchar(45) DEFAULT NULL,
  `pessoa_orientacao_sexual_idpessoa_orientacao_sexual` int(11) NOT NULL,
  `Bairro_Id` int(11) NOT NULL
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
-- Table structure for table `pessoa_orientacao_sexual`
--

CREATE TABLE `pessoa_orientacao_sexual` (
  `idpessoa_orientacao_sexual` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regiao`
--

CREATE TABLE `regiao` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL
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
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idevento`),
  ADD UNIQUE KEY `banner_link_UNIQUE` (`banner_link`),
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
-- Indexes for table `item_por_pessoa`
--
ALTER TABLE `item_por_pessoa`
  ADD PRIMARY KEY (`pessoa_idpessoa`,`evento_lista_item_seq`,`evento_lista_item_evento_lista_seq`,`evento_lista_item_evento_lista_evento_idevento`),
  ADD KEY `fk_item_por_pessoa_pessoa1_idx` (`pessoa_idpessoa`),
  ADD KEY `fk_item_por_pessoa_evento_lista_item1_idx` (`evento_lista_item_seq`,`evento_lista_item_evento_lista_seq`,`evento_lista_item_evento_lista_evento_idevento`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id`);

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
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `retrato_link_UNIQUE` (`retrato_link`),
  ADD KEY `fk_pessoa_pessoa_orientacao_sexual1_idx` (`pessoa_orientacao_sexual_idpessoa_orientacao_sexual`),
  ADD KEY `fk_pessoa_Bairro1_idx` (`Bairro_Id`);

--
-- Indexes for table `pessoa_amizade`
--
ALTER TABLE `pessoa_amizade`
  ADD PRIMARY KEY (`pessoa_idpessoa1`,`pessoa_idpessoa2`),
  ADD KEY `fk_pessoa_amizade_pessoa1_idx` (`pessoa_idpessoa1`),
  ADD KEY `fk_pessoa_amizade_pessoa2_idx` (`pessoa_idpessoa2`);

--
-- Indexes for table `pessoa_orientacao_sexual`
--
ALTER TABLE `pessoa_orientacao_sexual`
  ADD PRIMARY KEY (`idpessoa_orientacao_sexual`);

--
-- Indexes for table `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`Id`);

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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bairro`
--
ALTER TABLE `bairro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pessoa_orientacao_sexual`
--
ALTER TABLE `pessoa_orientacao_sexual`
  MODIFY `idpessoa_orientacao_sexual` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regiao`
--
ALTER TABLE `regiao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `fk_pessoa_Bairro1` FOREIGN KEY (`Bairro_Id`) REFERENCES `bairro` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pessoa_pessoa_orientacao_sexual1` FOREIGN KEY (`pessoa_orientacao_sexual_idpessoa_orientacao_sexual`) REFERENCES `pessoa_orientacao_sexual` (`idpessoa_orientacao_sexual`) ON DELETE CASCADE ON UPDATE CASCADE;

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

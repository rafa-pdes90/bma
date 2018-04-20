-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2017 at 03:20 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

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
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add evento', 7, 'add_evento'),
(20, 'Can change evento', 7, 'change_evento'),
(21, 'Can delete evento', 7, 'delete_evento'),
(22, 'Can add evento has regra', 8, 'add_eventohasregra'),
(23, 'Can change evento has regra', 8, 'change_eventohasregra'),
(24, 'Can delete evento has regra', 8, 'delete_eventohasregra'),
(25, 'Can add evento lista', 9, 'add_eventolista'),
(26, 'Can change evento lista', 9, 'change_eventolista'),
(27, 'Can delete evento lista', 9, 'delete_eventolista'),
(28, 'Can add evento lista item', 10, 'add_eventolistaitem'),
(29, 'Can change evento lista item', 10, 'change_eventolistaitem'),
(30, 'Can delete evento lista item', 10, 'delete_eventolistaitem'),
(31, 'Can add evento lista tipo', 11, 'add_eventolistatipo'),
(32, 'Can change evento lista tipo', 11, 'change_eventolistatipo'),
(33, 'Can delete evento lista tipo', 11, 'delete_eventolistatipo'),
(34, 'Can add evento organizacao', 12, 'add_eventoorganizacao'),
(35, 'Can change evento organizacao', 12, 'change_eventoorganizacao'),
(36, 'Can delete evento organizacao', 12, 'delete_eventoorganizacao'),
(37, 'Can add evento participante', 13, 'add_eventoparticipante'),
(38, 'Can change evento participante', 13, 'change_eventoparticipante'),
(39, 'Can delete evento participante', 13, 'delete_eventoparticipante'),
(40, 'Can add evento regra', 14, 'add_eventoregra'),
(41, 'Can change evento regra', 14, 'change_eventoregra'),
(42, 'Can delete evento regra', 14, 'delete_eventoregra'),
(43, 'Can add evento tipo', 15, 'add_eventotipo'),
(44, 'Can change evento tipo', 15, 'change_eventotipo'),
(45, 'Can delete evento tipo', 15, 'delete_eventotipo'),
(46, 'Can add evento visibilidade tipo', 16, 'add_eventovisibilidadetipo'),
(47, 'Can change evento visibilidade tipo', 16, 'change_eventovisibilidadetipo'),
(48, 'Can delete evento visibilidade tipo', 16, 'delete_eventovisibilidadetipo'),
(49, 'Can add item por pessoa', 17, 'add_itemporpessoa'),
(50, 'Can change item por pessoa', 17, 'change_itemporpessoa'),
(51, 'Can delete item por pessoa', 17, 'delete_itemporpessoa'),
(52, 'Can add participacao condicao', 18, 'add_participacaocondicao'),
(53, 'Can change participacao condicao', 18, 'change_participacaocondicao'),
(54, 'Can delete participacao condicao', 18, 'delete_participacaocondicao'),
(55, 'Can add participacao status', 19, 'add_participacaostatus'),
(56, 'Can change participacao status', 19, 'change_participacaostatus'),
(57, 'Can delete participacao status', 19, 'delete_participacaostatus'),
(58, 'Can add participante has condicao', 20, 'add_participantehascondicao'),
(59, 'Can change participante has condicao', 20, 'change_participantehascondicao'),
(60, 'Can delete participante has condicao', 20, 'delete_participantehascondicao'),
(61, 'Can add pessoa', 21, 'add_pessoa'),
(62, 'Can change pessoa', 21, 'change_pessoa'),
(63, 'Can delete pessoa', 21, 'delete_pessoa'),
(64, 'Can add pessoa amizade', 22, 'add_pessoaamizade'),
(65, 'Can change pessoa amizade', 22, 'change_pessoaamizade'),
(66, 'Can delete pessoa amizade', 22, 'delete_pessoaamizade'),
(67, 'Can add tipo has regra', 23, 'add_tipohasregra'),
(68, 'Can change tipo has regra', 23, 'change_tipohasregra'),
(69, 'Can delete tipo has regra', 23, 'delete_tipohasregra');

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
(1, 'pbkdf2_sha256$30000$cHToNEFrhpxb$/FxQC00LDUux7qHeJHYvsthBtzL+CDhd6iYIP9ryU4U=', NULL, 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2017-06-21 15:20:12.162327');

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
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bma', 'evento'),
(8, 'bma', 'eventohasregra'),
(9, 'bma', 'eventolista'),
(10, 'bma', 'eventolistaitem'),
(11, 'bma', 'eventolistatipo'),
(12, 'bma', 'eventoorganizacao'),
(13, 'bma', 'eventoparticipante'),
(14, 'bma', 'eventoregra'),
(15, 'bma', 'eventotipo'),
(16, 'bma', 'eventovisibilidadetipo'),
(17, 'bma', 'itemporpessoa'),
(18, 'bma', 'participacaocondicao'),
(19, 'bma', 'participacaostatus'),
(20, 'bma', 'participantehascondicao'),
(21, 'bma', 'pessoa'),
(22, 'bma', 'pessoaamizade'),
(23, 'bma', 'tipohasregra'),
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
(1, 'contenttypes', '0001_initial', '2017-06-20 17:10:24.683019'),
(2, 'auth', '0001_initial', '2017-06-20 17:10:32.759481'),
(3, 'admin', '0001_initial', '2017-06-20 17:10:34.842600'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-06-20 17:10:34.902604'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-06-20 17:10:35.822656'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-06-20 17:10:36.481694'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-06-20 17:10:37.201735'),
(8, 'auth', '0004_alter_user_username_opts', '2017-06-20 17:10:37.265739'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-06-20 17:10:37.782768'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-06-20 17:10:37.832771'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-06-20 17:10:37.903775'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-06-20 17:10:38.678820'),
(13, 'sessions', '0001_initial', '2017-06-20 17:10:39.209850'),
(14, 'bma', '0001_initial', '2017-06-20 17:20:50.083790');

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
  `organizador_idpessoa` int(11) NOT NULL,
  `evento_visibilidade_tipo_idevento_visibilidade_tipo` int(11) NOT NULL
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
  `nome_completo` varchar(100) DEFAULT NULL,
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
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idevento`),
  ADD KEY `fk_evento_evento_tipo1_idx` (`evento_tipo_idevento_tipo`),
  ADD KEY `fk_evento_pessoa1_idx` (`organizador_idpessoa`),
  ADD KEY `fk_evento_evento_visibilidade_tipo1_idx` (`evento_visibilidade_tipo_idevento_visibilidade_tipo`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  ADD CONSTRAINT `fk_evento_evento_visibilidade_tipo1` FOREIGN KEY (`evento_visibilidade_tipo_idevento_visibilidade_tipo`) REFERENCES `evento_visibilidade_tipo` (`idevento_visibilidade_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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

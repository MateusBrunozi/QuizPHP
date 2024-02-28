-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2022 às 12:40
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiz`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolhas`
--

CREATE TABLE `escolhas` (
  `id` int(255) NOT NULL,
  `numero_questao` int(120) NOT NULL,
  `correta` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escolhas`
--

INSERT INTO `escolhas` (`id`, `numero_questao`, `correta`, `text`) VALUES
(1, 1, 0, 'a) Pelo  faturamento do ano'),
(2, 1, 0, 'b) Pelos investimentos dentro da empresa'),
(3, 1, 1, 'c) Pelos fundos  que investem na empresa'),
(4, 1, 0, 'd) As que possuem uma proposta inovadora'),
(5, 2, 1, 'a) Empresa individual é formada por individuo que se inicia um pequeno negócio'),
(6, 2, 0, 'b) Empresa artesanal não exploram o patrimônio agrícola'),
(7, 2, 0, 'c) Empresa familiar está nas mãos dos familiares, mas o capital não controla'),
(8, 2, 0, 'd) Empresas individual são formadas por um indivíduo de grande negócio'),
(9, 3, 0, 'a) Diminuição anual do faturamento'),
(10, 3, 0, 'b) Diminuição das receitas'),
(11, 3, 1, 'c) Retorno anual para os acionistas '),
(12, 3, 0, 'd) Retorno sobre os ativos menores que o de empresas não familiares'),
(13, 4, 0, 'a) Sensação negativa de surpresas'),
(14, 4, 1, 'b) Dividir e conquistar'),
(15, 4, 0, 'c) Sigilo necessário'),
(16, 4, 0, 'd) Nenhuma das alternativas\r\n'),
(17, 5, 1, 'a) CloudWalk, Mercado Bitcoin e Unico '),
(18, 5, 0, 'b) Magazine Luiza, Mercado Livre e MadeiraMadeira'),
(19, 5, 0, 'c) Mercado Livre, Facily e C6 Bank'),
(20, 5, 0, 'd) Amazon, Magazine Luiza e Shoptime\r\n'),
(21, 6, 0, 'a) Startup\r\n'),
(22, 6, 0, 'b) Futurismo\r\n'),
(23, 6, 0, 'c) Observações diárias\r\n\r\n'),
(24, 6, 1, 'd) Benchmarking\r\n'),
(25, 7, 0, 'a) Pré projeto\r\n'),
(26, 7, 0, 'b) Core business\r\n'),
(27, 7, 1, 'c) Business plan \r\n\r\n'),
(28, 7, 0, 'd) xinismo'),
(29, 8, 1, 'a) Briefing\r\n'),
(30, 8, 0, 'b) Roteiro\r\n'),
(31, 8, 0, 'c) Escopo\r\n\r\n'),
(32, 8, 0, 'd) Fling heit'),
(33, 9, 0, 'a) B2C\r\n'),
(34, 9, 1, 'b) B2B '),
(35, 9, 0, 'c) F4G\r\n'),
(36, 9, 0, 'd) Nenhuma das alternativas'),
(37, 10, 1, 'a) Matriz PFOA '),
(38, 10, 0, 'b) Matriz PFRA\r\n'),
(39, 10, 0, 'c) Matriz POFR\r\n'),
(40, 10, 0, 'd) Matriz QAPO'),
(41, 11, 0, 'a) Novo normal\r\n'),
(42, 11, 1, 'b) Transformação digital'),
(43, 11, 0, 'c) Adaptação gerencial\r\n'),
(44, 11, 0, 'd) Adaptação de requisitos'),
(45, 12, 1, 'a) CEO'),
(46, 12, 0, 'b) Gerente\r\n'),
(47, 12, 0, 'c) Supervisor\r\n'),
(48, 12, 0, 'd) Funcionário'),
(49, 13, 1, 'a) Automobilística\r\n'),
(50, 13, 0, 'b) Metalúrgica \r\n'),
(51, 13, 0, 'c) Siderúrgica\r\n'),
(52, 13, 0, 'd) Moveleira'),
(53, 14, 0, 'a) Aversão a riscos e dinamismo\r\n'),
(54, 14, 0, 'b) Capacidade de explorar oportunidade de negócios e imediatismo\r\n'),
(55, 14, 1, 'c) Dinamismo e capacidade de formar equipes '),
(56, 14, 0, 'd) Otimismo e aversão a riscos\r\n'),
(57, 15, 0, 'a) Perder o foco e investir todo o seu dinheiro\r\n'),
(58, 15, 1, 'b) Não fazer um plano de negócios e não desenvolver o público alvo '),
(59, 15, 0, 'c) Produtos ou serviços sem um planejamento financeiro\r\n'),
(60, 15, 0, 'd) Impulsividade e falta de planejamento\r\n'),
(61, 16, 1, 'a) Criatividade, capacidade de desenvolvimento de novos mercados e inovações\r\n'),
(62, 16, 0, 'b) Criatividade, sem visão de mercado e pouca inovação\r\n'),
(63, 16, 0, 'c) falta de criatividade, pouca inovação\r\n'),
(64, 16, 0, 'd) Visão retrógrada e pouca conhecimento'),
(65, 17, 0, 'a) Investimento e conhecimento\r\n'),
(66, 17, 0, 'b) Oportunidade e investimento\r\n'),
(67, 17, 1, 'c) Oportunidade e necessidade'),
(68, 17, 0, 'd) Comodismo e hobby\r\n'),
(69, 18, 1, 'a) Pessoa que imagina, desenvolve e realiza visões'),
(70, 18, 0, 'b) Indivíduo acomodado que não corre riscos\r\n'),
(71, 18, 0, 'c) Pessoa que imagina, sem praticar suas ideias\r\n'),
(72, 18, 0, 'd) Indivíduo insatisfeito com o mundo, reclama para atingir seus objetivos'),
(73, 19, 0, 'a) Totalmente motivado por recompensas financeiras\r\n\r\n'),
(74, 19, 0, 'b) Assume riscos sem análise prévia\r\n'),
(75, 19, 0, 'c) Imediatista e espera recompensas imediatas\r\n'),
(76, 19, 1, 'd) Possui autoconfiança'),
(77, 20, 0, 'a) Empresa transnacional\r\n'),
(78, 20, 0, 'b) Franquias \r\n'),
(79, 20, 1, 'c) Consórcio '),
(80, 20, 0, 'd) Segurando'),
(81, 21, 0, 'a) Segurando\r\n'),
(82, 21, 1, 'b) Franquia '),
(83, 21, 0, 'c) Multinacional\r\n'),
(84, 21, 0, 'd) Consórcio '),
(85, 22, 0, 'a) Petróleo\r\n'),
(86, 22, 1, 'b) Automóveis'),
(87, 22, 0, 'c) Confecções\r\n'),
(88, 22, 0, 'd) Frutas e verduras'),
(89, 23, 1, 'a) Segurando'),
(90, 23, 0, 'b) Transnacional'),
(91, 23, 0, 'c) Franquia\r\n'),
(92, 23, 0, 'd) Consórcio '),
(97, 24, 0, 'a) O empreendedor possui iniciativa para criar algo\r\n'),
(98, 24, 0, 'b) O empreendedor possui habilidade em utilizar os recursos disponíveis de forma criativa\r\n\r\n'),
(99, 24, 0, 'c) Aceita assumir os riscos calculados e a possibilidade de fracassar \r\n'),
(100, 24, 1, 'd) Todas as alternativas estão corretas '),
(101, 25, 0, 'a) Sul e norte\r\n'),
(102, 25, 0, 'b) Centro-oeste e nordeste\r\n\r\n'),
(103, 25, 1, 'c) Norte e nordeste\r\n'),
(104, 25, 0, 'd) Sudeste e norte'),
(105, 26, 0, 'a) Coletiva\r\n'),
(106, 26, 1, 'b) Estatal '),
(107, 26, 0, 'c) Privada\r\n'),
(108, 26, 0, 'd) Manufatura'),
(109, 27, 0, 'a) Empresa Global\r\n'),
(110, 27, 0, 'b) Empresa Nacional\r\n'),
(111, 27, 1, 'c) Empresa Transnacional '),
(112, 27, 0, 'd) Empresa Multinacional\r\n'),
(113, 28, 0, 'a) Multinacional\r\n'),
(114, 28, 0, 'b) Estrangeiro\r\n'),
(115, 28, 0, 'c) Transnacional\r\n'),
(116, 28, 1, 'd) Nacional '),
(117, 29, 1, 'a) Michael Porter '),
(118, 29, 0, 'b) Franscisco da Vitória\r\n'),
(119, 29, 0, 'c) David Ricardo\r\n'),
(120, 29, 0, 'd) Adam Smith'),
(121, 30, 0, 'a) Libre comércio\r\n'),
(122, 30, 0, 'b) Trânsito comercial\r\n'),
(123, 30, 1, 'c) Zona de libre comércio '),
(124, 30, 0, 'd) Zona 51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `numero_questao` int(30) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`numero_questao`, `text`) VALUES
(1, 'Como funciona a avaliação de uma startup unicórnio?'),
(2, 'São estatísticas sobre empresas familiares...'),
(3, 'Atual desempenho da empresa familiar...'),
(4, 'Quais as disfunções na gestão de uma empresa?'),
(5, 'Quais dessas empresas são unicórnios'),
(6, 'Qual movimento é feito pela empresa quando existe uma necessidade de olhar para o mercado e ver as ações dos correntes?'),
(7, 'O que precisa ser elaborado para a criação de um negócio de forma estrutural?'),
(8, 'Que tipo de demanda de trabalho é  feito para determinar o que deve ser feito?'),
(9, ' A indústria automotiva atua em que segmento?'),
(10, 'A técnica Matriz Swot é usada para analisar os ambientes internos e externos, qual é o sinônimo dessa ferramenta?'),
(11, 'Que termo melhor se aproxima das mudanças de gestão de negócios?'),
(12, 'Profissional que lidera a tomada de decisões estratégias de uma empresa...'),
(13, 'Qual empresa é fundamental para atrair outras empresas? '),
(14, ' Características típicas de um empreendedor..'),
(15, 'rros básicos que um empreendedor comete...'),
(16, ' Características de um empreendedor..'),
(17, 'Quais são os aspectos fundamentais para abrir um negócio?'),
(18, 'Qual alternativa melhor descreve um empreendedor?'),
(19, 'Perfil empreendedor...'),
(20, 'Qual é a associação feita para unir forças afins comerciais que compartilham riscos e ganhos?'),
(21, 'Empresa que transfere o uso da marca e direito de comercialização para outras mediante contrato e mediante o pagamento de comissões...'),
(22, 'Quais são os produtos que o México mais exporta?'),
(23, 'Grupo Inditex e Coca Cola são de um grupo de empresas que compra outras empresas para controlá-las, que grupo é esse?'),
(24, 'Quais são as características de um empreendedor?'),
(25, 'Quais regiões do Brasil tem menor industrialização?'),
(26, ' Petrobras é uma empresa..'),
(27, 'Que tipo de empresa é a Bimbo?'),
(28, 'Este tipo de empresa tem capital majoritariamente nacional e sua planta produtiva está localizada dentro do país..'),
(29, 'Quem é o autor da vantagem competitiva?'),
(30, 'Que tipo de bloco comercial é o T-MEC?');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `escolhas`
--
ALTER TABLE `escolhas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`numero_questao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `escolhas`
--
ALTER TABLE `escolhas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de tabela `questoes`
--
ALTER TABLE `questoes`
  MODIFY `numero_questao` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

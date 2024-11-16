-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/11/2024 às 14:51
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trivia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `dificuldade` varchar(10) NOT NULL,
  `enunciado` varchar(500) NOT NULL,
  `alternativa1` varchar(200) NOT NULL,
  `alternativa2` varchar(200) NOT NULL,
  `alternativa3` varchar(200) NOT NULL,
  `alternativa4` varchar(200) NOT NULL,
  `correta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pergunta`
--

INSERT INTO `pergunta` (`id`, `categoria`, `dificuldade`, `enunciado`, `alternativa1`, `alternativa2`, `alternativa3`, `alternativa4`, `correta`) VALUES
(1, 'Animais', 'hard', 'Quantos meses até que uma baleia grávida dê à luz?', '16 meses', '12 meses', '8 meses', '5 meses', '16 meses'),
(2, 'Conhecimentos gerais', 'easy', 'Um anel tem 3 pedras preciosas. Quantas pedras preciosas têm 11 anéis?', '33', '110', '333', '30', '33'),
(3, 'Conhecimentos gerais', 'medium', 'Em que país foi construído o Muro de Berlim?', 'Alemanha', 'China', 'Coreia do Norte', 'Estados Unidos', 'Alemanha'),
(4, 'Mitologia', 'hard', 'Na mitologia grega quem era o Deus do vinho?', 'Dionísio', 'Baco', 'Efésio', 'Deméter', 'Dionísio'),
(5, 'Ciência e natureza', 'easy', 'Quantos continentes existem?', '6', '5', '1', '3', '6'),
(6, 'Entretenimento: Videogame', 'medium', 'Super Mário World foi lançado em que ano?', '1990', '1993', '1985', '1979', '1990'),
(7, 'Ciência: Computadores', 'easy', 'Qual serviço de e-mail pertence à Microsoft?', 'Outlook', 'Yahoo Mail', 'Gmail', 'iCloud Mail', 'Outlook'),
(8, 'História', 'easy', 'O que representam os cinco anéis olímpicos?', 'As partes do mundo unidas pelo Olimpismo', 'As argolas da ginástica artística', 'Cinco tipos de esporte: de rede, de campo, de combate, de precisão, de invasão.', 'Cinco deuses do Olimpo: Zeus, Atena, Apolo, Dionísio e Hermes', 'As partes do mundo unidas pelo Olimpismo'),
(9, 'Entretenimento: Músicas', 'medium', 'O que significa o termo “piano”?', 'Execução suave', 'Em ritmo acelerado', 'Moderadamente lento', 'Em ritmo rápido', 'Execução suave'),
(10, 'Esportes', 'easy', 'Por qual país David Beckham jogou?', 'Inglaterra', 'Espanha', 'EUA', 'Brasil', 'Inglaterra'),
(11, 'Entretenimento: Cartoon e animações', 'medium', 'Qual desses desenhos é uma obra nacional?', 'Irmão do Jorel', 'Samurai Jack', 'A Vaca e o Frango', 'O Laboratório de Dexter', 'Irmão do Jorel'),
(12, 'Veículos', 'hard', 'Qual nome do primeiro carro elétrico ?', 'Jamais Content', 'Gurgel Itaipu', 'Caoa', 'Tesla Model 3', 'Jamais Content'),
(13, 'Ciência: Matemática', 'hard', 'Qual é a sequência de Fibonacci ?', '1,2,3,5,8,13', '0,1,2,3,4,5', '1,3,5,7,9,11', '1,2,3,6,12,24', '1,2,3,5,8,13'),
(14, 'Arte', 'hard', 'Quem pintou o quadro \'Noite Estrelada\'?', 'Van Gogh', 'Leonardo Da Vinci', 'Picasso', 'Michelangelo', 'Van Gogh'),
(15, 'Ciência e natureza', 'easy', 'Quanto tempo a Terra demora para dar uma volta completa em torno dela mesma?', 'Aproximadamente 24 horas', '365 dias', '7 dias', '30 ou 31 dias', 'Aproximadamente 24 horas'),
(16, 'Geografia', 'easy', 'A cidade Belém/PA fica em qual região do Brasil?', 'Norte', 'Sudeste', 'Nordeste', 'Centro-Oeste', 'Norte'),
(17, 'Conhecimentos gerais', 'medium', 'Qual a especialidade do otorrinolaringologista?', 'Tratamento das doenças relacionadas a nariz, ouvido e garganta', 'Tratamento das doenças bucais', 'Tratamento das doenças infantis', 'Tratamento das doenças da pele', 'Tratamento das doenças relacionadas a nariz, ouvido e garganta'),
(18, 'Entretenimento: Livros', 'easy', 'Quem escreveu um famoso diário enquanto se escondia dos nazistas em Amsterdã?', 'Anne Frank', 'Bridget Jones', 'Marie Curie', 'Helen Keller', 'Anne Frank'),
(19, 'História', 'medium', 'Que grande evento histórico aconteceu em 1822 no Brasil?', 'Independência do Brasil', 'Descobrimento do Brasil', 'Construção de Brasília', 'Ditadura Militar', 'Independência do Brasil'),
(20, 'Conhecimentos gerais', 'medium', 'Quem foi o criador do Bitcoin', 'Satoshi Nakamoto', 'Masashi Kishimoto', 'Elon Musk', 'Han Solo', 'Satoshi Nakamoto');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

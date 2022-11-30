-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 10:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treino`
--

-- --------------------------------------------------------

--
-- Table structure for table `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `idade` int(10) NOT NULL,
  `sexo` char(1) NOT NULL,
  `altura` int(10) NOT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mensagens`
--

INSERT INTO `mensagens` (`id`, `nome`, `email`, `idade`, `sexo`, `altura`, `comentario`) VALUES
(1, 'Tixinhadois', 'Tixinhadois@riotgames.com', 32, 'M', 172, 'Já pensou você com esse drop do time mais velho do Brasil? Ano que vem tem evento internacional presencial, você e seu amor na torcida, assistindo vavazinho com oskv confortável no corpo.. sé loco\r\n\r\nCupom \"OSKV\" para mais desconto xD aaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `treinos`
--

CREATE TABLE `treinos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `dificuldade` int(10) NOT NULL,
  `ficha` varchar(10) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `qtd_series` int(50) NOT NULL,
  `qtd_repeticoes` int(50) NOT NULL,
  `descanso` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treinos`
--

INSERT INTO `treinos` (`id`, `nome`, `descricao`, `dificuldade`, `ficha`, `tipo`, `qtd_series`, `qtd_repeticoes`, `descanso`) VALUES
(1, 'Supino reto', 'O supino reto consiste essencialmente em uma flexão de ombro horizontal seguida por uma extensão de cotovelo — movimentos potencializados pela carga na barra. Os três principais músculos recrutados são o peitoral maior, tríceps braquial e deltóide.', 3, 'A', 'Peito', 4, 6, 60),
(2, 'Supino inclinado', 'O supino inclinado com halteres é um exercício feito para desenvolver os músculos peitorais. Seja em técnicas terapeuticas ou durante a musculação, ele trabalha a região do peito e, de quebra, movimento os braços e ombros. Diferente do modelo tradicional realizado com barras, o supino inclinado com halteres é feito de forma livre - o que exige uma concentração maior para evitar erros durante o treino.', 3, 'A', 'Peito', 4, 6, 60),
(3, 'Supino declinado', 'O Supino Declinado é geralmente feito em um ângulo de 30 graus para baixo. Essa mudança de ângulo faz com que você tenha que levantar o peso em um ângulo um pouco diferente, usando menos a parte da frente dos ombros e mais a parte de baixo do seu peitoral. ', 3, 'A', 'Peito', 4, 6, 60),
(4, 'Pullover com halter', 'O pull down contribui para o fortalecimento dos músculos da região dorsal, tonificando a musculatura e contribuindo para deixar a região com um aspecto mais harmônico', 3, 'A', 'Peito', 4, 6, 60),
(5, 'Crucifixo inclinado com halteres', 'O crucifixo inclinado é um ótimo exercício de isolamento para o peitoral, atingindo com maior eficácia a porção superior do peito. ”Apesar disso, ele também recruta os ombros frontais, assim como o tríceps também”.', 3, 'A', 'Peito', 3, 6, 60),
(12, 'Remada Baixa(Pulley)', 'O Pulley com Remada é um equipamento de musculação ideal para trabalhar com alta intensidade. O objetivo com este exercício é dar uma ênfase maior no músculo posterior do deltoide, assim como nos adutores de escápula.', 3, 'B', 'Costas', 4, 6, 60),
(13, 'Puxada frontal pegada aberta (pulley)', 'Puxada Frontal (pulley) é um exercício que como o nome mesmo diz trabalha os músculos dorsais, a região das costas. Os músculos envolvidos são latíssimo do dorso, deltóide posterior, trapézio inferior e rombóides.', 3, 'B', 'Peito', 4, 6, 60),
(14, 'Puxada frontal usando o triângulo (pulley)', 'Essa versão não trabalha tanto os dorsais mas ela ativa o posterior de ombros e o peitoral.', 3, 'B', 'Ombro', 4, 6, 60),
(15, 'Barra fixa', 'Além dos braços, a barra fortalece o core (conjunto de músculos profundos do abdome), ajudando na estabilização e no aprimoramento de técnica de corrida.', 3, 'B', 'Costas', 3, 10, 60),
(16, 'Abdominal na polia alta (em pé)', 'O Abdominal adaptado na polia alta é uma excelente variação para trabalhar os músculos Reto abdominal e Oblíquos interno e externo. Uma estratégia é adaptar um bastão e substituir a barra.', 3, 'B', 'Abdominal', 3, 6, 60),
(17, 'Abdominal no banco inclinado', 'Abdominal infra no banco inclinado é uma ótima variação de exercícios abdominais, para trabalhar de forma dinâmica o músculos Reto abdominal, Oblíquos e os músculos flexores do Quadril isometricamente. Existem inúmeras variações de exercícios abdominais.', 3, 'B', 'Abdominal', 3, 10, 60),
(18, 'Leg press horizontal', 'o Leg Press horizontal trabalha músculos posteriores da coxa, glúteos e quadríceps, sendo este último o músculo mais trabalhado.', 1, 'B', 'Pernas', 4, 12, 60),
(19, 'Leg press 45°', 'Por ser realizado em um banco inclinado a 45º, fortalece a panturrilha, o quadríceps (parte da frente das coxas), os glúteos e os isquiotibiais (posteriores das coxas).', 1, 'B', 'Pernas', 4, 10, 60),
(20, 'Caderia Extensora', 'O exercício realizado na cadeira extensora é caracterizado como monoarticular e trabalha dinamicamente somente a extensão do joelho. Sendo assim, o quadríceps – vasto lateral, vasto medial, vasto intermédio e reto femoral – é o principal músculo recrutado durante o exercício.', 1, 'B', 'Pernas', 3, 10, 60),
(21, 'Cadeira Flexora', 'A Cadeira extensora e flexora é um aparelho da linha Biodelta com sistema de alavancas e pesos livres que permite os dois movimentos básicos do joelho. Na extensão ativa de forma completa os quatro feixes do quadríceps. Na flexão, ativa os posteriores da coxa.', 1, 'B', 'Pernas', 3, 10, 60),
(22, 'Elevação pelvica', 'a elevação de quadril, também chamada de hip thrusts ou elevação pélvica, é o movimento mais potente que pode ser feito para trabalhar a região~dos gluteos. Ele envolve praticamente os mesmos músculos que o agachamento. Mas, o aumento do foco nos glúteos e a menor chance de lesões o torna superior.', 1, 'B', 'Pernas', 3, 10, 60),
(23, 'Abdominal na máquina', 'Abdominal na máquina é um tipo de exercício físico para desenvolver e fortalecer a musculatura do abdômen, trabalhando os principais pontos do tórax, principalmente do músculo reto.', 1, 'B', 'Abdominal', 4, 10, 60),
(24, 'Prancha', 'A prancha abdominal é considerada um exercício isométrico para fortalecer o core – isto é, o centro do nosso corpo – e os músculos paravertebrais e estabilizadores. O ideal é se fazer até a falha.', 1, 'B', 'Peito', 3, 60, 60),
(25, 'Rotação externa de ombro', 'Aquecimento do manguito (unilateral e sem pausa)', 1, 'A', 'Ombro', 3, 12, 0),
(27, 'Supino inclinado máquina', 'O supino inclinado na máquina articulada é um exercício composto muito efetivo para treinar o peitoral, em especial as fibras superiores do músculo. O movimento pode ser muito útil, especialmente para aqueles que possuem dificuldade em sentir o peitoral trabalhando durante o treino.', 1, 'A', 'Peito', 3, 10, 60),
(28, 'Supino inclinado com barra', 'O supino inclinado com halteres é um exercício feito para desenvolver os músculos peitorais. Seja em técnicas terapeuticas ou durante a musculação, ele trabalha a região do peito e, de quebra, movimento os braços e ombros.', 1, 'A', 'Peito', 4, 10, 60),
(29, 'Crucifixo inclinado', 'O crucifixo inclinado é um excelente exercício para trabalhar o músculo do peitoral e utilizá-lo corretamente auxiliará nos resultados e na hipertrofia deste grupo muscular', 1, 'A', 'Peito', 3, 12, 60),
(30, 'Desenvolvimento máquina', 'Trabalha: Ombros e braços (deltoide anterior, trapézio, tríceps braquial). ', 1, 'A', 'Ombro', 3, 10, 60),
(31, 'Elevação lateral com halteres', 'A elevação lateral com halteres é um exercício ideal para o fortalecimento dos músculos dos ombros além de melhorar a postura do atleta. Ou seja, não é útil somente para deixar os músculos mais torneados, que servem para os exercícios que utilizam os ombro.', 1, 'A', 'Ombro', 3, 10, 60),
(32, 'Elevação lateral unilateral no banco inclinado', 'A elevação lateral com halteres trabalham diferentes tipos de músculos simultaneamente como: deltóide anterior que é a frente dos ombros; o deltóide posterior que é a porção de trás dos ombros; o deltóide medial que é a parte de cima os ombros e o trapézio músculo infraespinhal.', 1, 'A', 'Ombro', 4, 10, 60),
(33, 'Triceps testa polia', 'O tríceps testa é um exercício de musculação que desenvolve isoladamente a parte de trás do braço, por meio da extensão do cotovelo, sendo ideal para quem procura aumentar a hipertrofia na região.', 1, 'A', 'Triceps', 3, 10, 60),
(34, 'Triceps pulley polia alta', 'O tríceps na polia alta é um dos exercícios mais prescritos pelo professores de educação física e personais trainers que atuam nas salas de Treinamento Resistido com Pesos (TRP), para produzir uma treinabilidade do grupo muscular tríceps braquial e ancôneo.', 1, 'A', 'Triceps', 3, 10, 60),
(35, 'Tríceps francês', 'O tríceps francês é uma variação muito interessante para o trabalho muscular da região alvo. Alguns detalhes, fazem com que ele seja ainda mais efetivo. Uma das formas mais efetivas de trabalhar qualquer músculo, é oferecer a ele, sobrecargas tensionais, com variações de movimento', 1, 'A', 'Triceps', 3, 10, 60),
(36, 'Remada serrote ou unilateral', 'Remada serrote ou unilateral é extremamente útil para trabalhar todos os músculos das costas. Sem dúvidas é um exercício que todo treino de costas deveria conter.', 1, 'C', 'Costas', 3, 12, 60),
(38, 'Puxada alta com pegada aberta', 'Na puxada alta com pegada aberta, há um movimento de adução de ombro, junto com uma flexão de cotovelo e uma adução das escápulas. O detalhe da pegada aberta é a forma como você irá segurar a barra, com a palma das mãos viradas para o aparelho, com os braços abertos e o tronco levemente inclinado.', 1, 'C', 'Costas', 3, 10, 60),
(39, 'Pull-over', 'O pull down contribui para o fortalecimento dos músculos da região dorsal, tonificando a musculatura e contribuindo para deixar a região com um aspecto mais harmônico.', 1, 'C', 'Costas', 3, 10, 60),
(40, 'Rosca direta', 'A rosca direta com barra reta é um exercício clássico voltado para a estimulação dos bíceps. Trabalhando os três principais músculos do braço e antebraço — bíceps braquial, braquial anterior e braquiorradial —, o método está presente na rotina de muitos dos atletas.', 1, 'C', 'Biceps', 3, 12, 60),
(41, 'Rosca haltere no banco inclinado ', 'A rosca no Cross é um excelente exercício para a musculatura da região do braço, por utilizar o cabo, a tensão é constante em todo o movimento.', 1, 'C', 'Biceps', 3, 10, 60),
(42, 'Rosca martelo na polia', 'O exercício de braço “rosca martelo” é um exercício de flexão de cotovelo, onde utilizamos a pegada neutra para executá-lo. A rosca martelo é um excelente exercício para desenvolvimento dos braços.', 1, 'C', 'Peito', 3, 10, 60),
(43, 'Agachamento livre', '', 3, 'C', 'Pernas', 4, 6, 60),
(44, 'Leg press', '', 3, 'C', 'Pernas', 4, 6, 60),
(45, 'Flexão de pernas', '', 3, 'C', 'Peito', 4, 6, 60),
(46, 'Extensão de pernas', '', 3, 'C', 'Peito', 3, 10, 60),
(47, 'Panturrilha sentada na máquina', '', 3, 'C', 'Panturrilha', 4, 10, 60),
(48, 'Elevação de gêmeos no leg press (panturrilha)', '', 3, 'C', 'Panturrilha', 4, 10, 60),
(49, 'Rosca direta com barra', '', 3, 'D', 'Biceps', 4, 6, 60),
(50, 'Rosca alternada com halteres', '', 3, 'D', 'Biceps', 4, 6, 60),
(51, 'Rosca no banco Scott com barra', '', 3, 'D', 'Peito', 4, 6, 60),
(52, 'Tríceps testa com barra', '', 3, 'D', 'Triceps', 4, 6, 60),
(53, 'Tríceps francês com halter', '', 3, 'D', 'Peito', 4, 6, 60),
(54, 'Tríceps na polia com corda', '', 3, 'D', 'Peito', 4, 6, 60),
(55, 'Elevação lateral com halteres', '', 3, 'E', 'Ombro', 4, 6, 60),
(56, 'Elevação frontal com halteres ', '', 3, 'E', 'Ombro', 4, 6, 60),
(57, 'Desenvolvimento com barra (sentado)', '', 3, 'E', 'Ombro', 4, 6, 60),
(58, 'Encolhimento de ombros com halteres', '', 3, 'E', 'Trapezio', 4, 6, 60),
(59, 'Rosca pulso na barra (antebraço)', '', 3, 'E', 'Antebraço', 3, 20, 60),
(60, 'Rosca inversa (antebraço)', '', 3, 'E', 'Antebraço', 4, 6, 60),
(61, 'Agachamento livre', '', 2, 'A', 'Pernas', 4, 10, 60),
(62, 'Agachamento no Hack', '', 2, 'A', 'Pernas', 4, 12, 60),
(63, 'Leg press 45°', '', 2, 'A', 'Pernas', 4, 15, 60),
(64, 'Gêmeos sentado', '', 2, 'A', 'Biceps', 6, 8, 30),
(65, 'Rosca direta', '', 2, 'A', 'Biceps', 4, 8, 30),
(66, 'Rosca Scott', '', 2, 'A', 'Biceps', 4, 12, 60),
(67, 'Supino inclinado com Halteres', '', 2, 'B', 'Peito', 4, 8, 60),
(68, 'Crucifixo na máquina', '', 2, 'B', 'Peito', 4, 12, 45),
(69, 'Flexão', '', 2, 'B', 'Peito', 3, 12, 90),
(70, 'Elevação lateral', '', 2, 'B', 'Ombro', 5, 12, 45),
(71, 'Tríceps testa', '', 2, 'B', 'Triceps', 4, 12, 45),
(72, 'Pulley Frente', '', 2, 'C', 'Costas', 4, 10, 45),
(73, 'Remada baixa', '', 2, 'C', 'Costas', 4, 12, 45),
(74, 'Pull down', '', 2, 'C', 'Costas', 3, 12, 45),
(75, 'Elevação Pélvica', '', 2, 'C', 'Pernas', 4, 8, 60),
(76, 'Stiff', '', 2, 'C', 'Pernas', 3, 12, 60),
(77, 'Flexora deitado', '', 2, 'C', 'Pernas', 3, 10, 45),
(78, 'Face Pull', '', 2, 'D', 'Ombro', 4, 12, 45),
(79, 'Desenvolvimento com Barra', '', 2, 'D', 'Ombro', 4, 8, 60),
(80, 'Elevação lateral no cabo', '', 2, 'D', 'Ombro', 4, 12, 45),
(81, 'Tríceps Pulley', '', 2, 'D', 'Peito', 4, 8, 45),
(82, 'Tríceps testa', '', 2, 'D', 'Peito', 3, 12, 45);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'admin@gymworkout.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

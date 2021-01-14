-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2021 at 09:14 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `idPersonne` int(11) NOT NULL,
  `idLivre` varchar(15) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`idPersonne`, `idLivre`, `idRole`) VALUES
(4, '9791094169261', 1),
(3, '9782344014196', 1),
(3, '9782344001684', 1),
(3, '9782344001653', 1),
(1, '9782298035148', 1),
(3, '9782344001660', 1),
(1, '9782226186072', 1),
(2, '9782092544372', 1),
(2, '9782092538036', 1),
(2, '9782092530870', 1);

-- --------------------------------------------------------

--
-- Table structure for table `editeur`
--

CREATE TABLE `editeur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editeur`
--

INSERT INTO `editeur` (`id`, `libelle`) VALUES
(1, 'Albin Michel'),
(2, 'Nathan'),
(3, 'Glénat'),
(4, 'Graph Zeppelin');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Bandes dessinés'),
(3, 'Essai'),
(2, 'Roman');

-- --------------------------------------------------------

--
-- Table structure for table `langue`
--

CREATE TABLE `langue` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `langue`
--

INSERT INTO `langue` (`id`, `libelle`) VALUES
(1, 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `isbn` varchar(15) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `editeur` int(11) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `langue` int(11) DEFAULT NULL,
  `nbpages` int(11) DEFAULT NULL,
  `resume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `langue`, `nbpages`, `resume`) VALUES
('9782092530870', 'Les douze travaux d\'Hercule', 2, 2011, 1, 1, 64, 'Hercule doit accomplir les douze travaux que lui a confiés son cousin, le roi Eurysthée. Le voilà parti aux quatre coins du monde connu, affrontant les pires monstres, collectant les objets les plus précieux et relevant les défis les plus impossibles... Sa force et son courage lui suffiront-ils pour réussir ses terribles missions ?'),
('9782092538036', 'L\'enlèvement de Perséphone', 2, 2012, 1, 1, 64, 'Un jour, Déméter, déesse de la moisson, découvre que sa fille Perséphone a été enlevée. Son enquête lui apprend que le coupable n\'est autre qu\'Hadès, dieu des Enfers. et cela avec la bénédiction de Zeus, roi des Dieux !Furieuse, Déméter commence à négliger son travail pour les champs, et les hommes se retrouvent plongés dans l\'hiver. les dieux supplient alors la déesse de reprendre son travail. Mais celle-ci est inflexible, tant qu\'elle n\'aura pas retrouvé sa fille, pas de moisson ! Les négociations avec Hadès commencent...'),
('9782092544372', 'La malédiction d\'Œdipe', 2, 2013, 1, 1, 64, 'Le jeune Œdipe est le fils du roi et de la reine de Corinthe. Un jour, il découvre qu\'il est l\'objet d\'une terrible prédiction : il tuera son père et épousera sa mère ! Œdipe pourra-t-il échapper à son destin ?'),
('9782226186072', 'Percy Jackson : Le voleur de foudre', 1, 2008, 2, 1, 480, 'Percy est un adolescent de 12 ans. Après une année dans une école de laquelle il s\'est fait renvoyer, Percy doit partir à cause d\'une attaque de monstre, c\'est alors qu\'un minotaure agresse sa mère et lui. Rejoint par son ami Grover, en réalité un satyre apprenti protecteur, il se réfugie dans une colonie où il découvre qu\'il est le fils de Poséidon et que Zeus et d’autres monstres l\'accusent d\'avoir volé son éclair.'),
('9782298035148', 'Percy Jackson la mer des monstres', 1, 2010, 2, 1, 320, 'Il y a un an, Percy Jackson découvrait que les personnages de la mythologie grecque existaient, et qu\'il était le fils de Poséidon. Mais la Colonie des Sang-Mêlé ne peut plus garantir la sécurité des enfants demi-dieux : ses défenses faiblissent car l\'arbre de Thalia a été empoisonné. Le remède : la Toison d\'or, que détient le cyclope Polyphème. Afin d\'atteindre l\'île de Polyphème, Percy et ses amis vont devoir naviguer sur la Mer des Monstres, qui porte bien son nom. La seconde quête de Percy commence...'),
('9782344001653', 'L\'Odyssée', 3, 2017, 1, 1, 56, 'Troie est désormais aux mains des grecs. La guerre aura duré 10 ans... Pour Ulysse, roi d’Ithaque, il est à présent temps de retourner dans son foyer, retrouver sa Pénélope. C’est le début d’un long et périlleux voyage. Un voyage où, à chacune de ses escales, sa force, son ingéniosité et son courage seront sans cesse mis à l’épreuve. Car ainsi en ont décidé les dieux.'),
('9782344001660', 'L\'Illiade', 3, 2016, 1, 1, 56, 'En face de la citadelle imprenable de Troie se tient l’armée grecque. Une terrible guerre dure déjà depuis dix ans... Pour Ménélas, roi de Sparte, c’est une question d’honneur suite à l’enlèvement de sa femme Hélène par Pâris, prince de Troie. Agamemnon, le frère de Ménélas, y trouve le prétexte de faire tomber la cité mythique pour étendre son empire. Achille, le plus grand des guerriers grecs, voit là l’occasion d’entrer dans la légende. Mais ces hommes, si puissants soient-ils, ignorent qu’ils ne sont que des pions. Que Troie forme le plateau d’une funeste partie d’échec dont seuls les dieux sortiront vainqueurs...'),
('9782344001684', 'Jason et la toison d\'or ', 3, 2017, 1, 1, 56, ' Héritier du trône d’Iolcos, Jason est le seul survivant d’un massacre perpétré par son oncle, le félon Pélias. Mis en sécurité par sa mère, il parfait son apprentissage auprès du meilleur éducateur de la Grèce : le centaure Chiron. Devenu adulte, Jason part alors accomplir son destin et réclamer son trône. Mais, piégé par son oncle, il se retrouve à devoir entreprendre la plus périlleuse des missions : rapporter la toison d’or, un trésor aussi inestimable qu’inaccessible. Pour s’en emparer, il va devoir s’entourer des meilleurs. Et bâtir un navire capable de traverser le terrible Détroit des Dardanelles. Alors, seulement, le voyage pourra commencer...'),
('9782344014196', 'Dédale et Icare', 3, 2018, 1, 1, 56, ' Voler, à s\'en brûler les ailes.Quelque temps après avoir été couronné roi de Crète, Minos ordonne à Dédale de construire le Labyrinthe pour y enfermer le monstre à qui sa femme a donné le jour. Mais lorsqu\'il apprend que l\'architecte l\'a trahi en permettant la fuite de sa fille Arianne, il décide de l\'enfermer dans sa propre création en compagnie de son fils, Icare, condamnés à errer jusqu\'à la mort dans la prison la plus élaborée jamais conçue. L\'ingénieux Dédale a pourtant une idée géniale : s\'envoler à l\'aide de plumes collées sur leur dos. Mais avant cela, il met en garde Icare : ne pas voler trop près du soleil, sous peine de se brûler les ailes...'),
('9791094169261', 'Achille, la naissance d\'un héro', 4, 2018, 1, 1, 48, 'Ce premier opus (sur les trois prévus) s\'ouvre sur les noces de Pélée et Thétis, tous les dieux sont invités sauf Eris, déesse de la discorde. Pour se venger, elle leur jette une pomme d\'or avec la mention : \"A la plus belle\". Trois déesses revendiquent alors le fruit, Héra, Athéna et Aphrodite. Afin de mettre un terme à la dispute, Zeus charge le mortel Pâris de désigner la gagnante.');

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`) VALUES
(1, 'Riordian', 'Rick'),
(2, 'de Montarde', 'Hélène'),
(3, 'Ferry', 'Luc'),
(4, 'Ferri', 'Casimo');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `libelle`) VALUES
(1, 'Ecrivain'),
(2, 'Illustrateur'),
(3, 'Traducteur'),
(4, 'Préface');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libelle` (`libelle`);

--
-- Indexes for table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `langue`
--
ALTER TABLE `langue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

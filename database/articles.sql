-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : thomaslayradmin.mysql.db
-- Généré le :  jeu. 06 juin 2019 à 15:22
-- Version du serveur :  5.6.43-log
-- Version de PHP :  7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `thomaslayradmin`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `article_text` longtext NOT NULL,
  `article_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `date`, `slug`, `title`, `description`, `article_text`, `article_image`) VALUES
(1, '2019-06-05 23:56:27', 'dooodle-project', 'In review: The Dooodle project, the good, the very good, and the not so good.', 'One day, a good friend of mine, Alex, went to see me and told me about an idea he had. He wanted the spray the wall of our scholl with little doodles. I thought it was kinda neet, and I proposed my help. At first it was just to help him a bit, maybe help him do a presentation or what not.. oh boy was I wrong.. ', 'One day, a good friend of mine, Alex, went to see me and told me about an idea he had. He wanted the spray the wall of our school with little doodles. I thought it was kinda neat, and I proposed my help. At first it was just to help him a bit, maybe help him do a presentation or what not.. oh boy was I wrong.. \r\n<br><br><br><br>\r\nWe started by pitching our idea to our headmistress, saying how it would be so cool to have a wall painted with dooodle, and that we might want other people to help. We didn\'t expected much, but she said yes. All right, well I guess it\'s happening. \r\n<br><br><br><br>\r\nSo we were there, with a project that was beginning to take form, but now, we asked ourselves, how can we make it special ? A simple question with a simple answer, a website. His name ? Dooodle. (because having three o\'s is so internety)\r\n<br><br><br><br>\r\nAnd here I go again, another one, the plan was pretty simple, <del> <i>copy reddit</i></del>, uuuh, make something unique. We first needed to ask students of our school to sign up, that means that we had to verify their email address (we all have an @hetic.net account). Then, once they log in, they could vote for their prefered dooodle. We also included the possibility to add your own dooodle, and let the student vote for them. \r\n<br><br><br><br>\r\nOne of the problem with letting students post their own dooodle is the content of said dooodle. To make it short, we don\'t want penises. Should we use a deep learning algorithm to detect any \r\nphallic presences ? Should we hire a dedicated team of super-moderators ? Or should we do it all by ourselves ? Yeah, option 3 is the way to go. \r\n<br><br><br><br>\r\n<span class=title> The design choices and why it matters</span>\r\n<br><br>\r\nAll right all right, enough with the planning, we have our idea, now lets build it, first of, the design. The main element is going to be the card, where everything important is going to be. \r\n<br><br>\r\n<img src=../images/card_dooodle.png alt=card dooodle>\r\n<br><br>\r\nThere\'s three main aspect to this, first, the dooodle, the most important aspect of the card, and it takes about 75% of the surface. Then, the title, still important, but not that much, a bit of bold font, and that does the trick. The date is displayed but it isn\'t really useful, so we don\'t have to make it that visible. On the right, the heart, where you click in order to vote, we have to understand right away how you vote, and a heart is very significant of that. \r\n<br><br><br><br>\r\nAnother thing that one of my professor told me is the importance of a good 404 error page, I knew that but with the small amount of time I had to put the website online, I had to do it quick. Still I managed to make the little stars move around. (Would have been better if it was when we move the mouse around...) \r\n<br><br>\r\n<img src=../images/404_not_found.png alt=card dooodle>\r\n<br><br>\r\n\r\n<span class=title> The site rise and success</span>\r\n<br><br>\r\n\r\nIt was kinda amazing the first few days, we decided to put the url of our website on the wall of our school, and in just a few hours, tens of students were coming on the website, and the first dooodles where posted. I was really surprised and quite happy. You can see the result of three weeks below. \r\n<br><br>\r\n<img src=../images/analytics.png alt=card dooodle>\r\n<br><br>\r\nOverall, there was almost 250 users signed up on the website, 2000 votes, 50 dooodles posted and 11 200 pages seen ! It is a personal record for me, and the website was only down for about 5 minutes during this time !\r\n<br><br><br><br><br><br>\r\nNow, all we have to do is paint the damn wall ! :)\r\n', 'images/dooodle.png'),
(2, '2019-06-06 01:13:57', 'yoan-gross-portfolio', 'How I tried to make a 3d immersive website (and it turned out quite all right)', 'I realized this website for one of my dearest friend, he didn\'t really asked me for it. I was sure it was going to take me only a week. 2 month later and it still is not finished. What have I done ? ', 'All right, so what happened ? Basically I just finished a project in three.js. I\'d fallen in love with the tech. At first I wanted to make a playground with a lot of tiny three.js experiment. So I started to work. I choose the font, the universe feel, and started coding.\r\n<br><br><br>\r\nEverything was going well, I showed my progress to my friend Yoan, he thought it was kinda cool, he then told me he needed a website for his search of an internship. That\'s when it struck me, <br><br><i>\"what if my idea becomes its portfolio ?\"</i><br><br> I proposed to him that I made his portfolio, he said yes. (one of my best day ever). \r\n<br><br>\r\n<span class=title> The design choices </span>\r\n<br><br>\r\nSo I need to make a portfolio for my friend. What makes a good portfolio ? Two things, a personal universe that represent well the spirit of the one portrayed in that portfolio, and a good design. We first choose the font together, we wanted something a bit blocky, we ended up with the Staatliches.\r\n<img src=../images/font_choice.png alt=font_choice>\r\nWith that out of the way, the problem is displaying the right element at the right time, while being to navigate smoothly across the different category. It is imperative to have it all in an one page only. I wanted to become better at es6 and native development environment, because I find that your learn a lot more by doing it yourself. With de design of the elements done, I started thinking. \r\n <img src=../images/elements.png alt=elements>\r\nWhat I\'ve decided to do was that, every time that we scroll, I increment a value that correspond to the value of the camera associated with the scene. To make it simple, I move the camera by, let\'s say 10, and if it collides with a cube, that means that you can display the content. \r\n<br><br>\r\n<span class=title> The custom scroll between elements</span>\r\n<br><br>\r\nTalking about scrolling, it was a pain in the booty (not to say ass). There\'s two main comportment. The first one is with the trackpad, it works with a delta (meaning the difference in speed between A and B) and has a limit of 150. That means that a small scroll will output at best 30 to 50 , and a big scroll will be 150. Then, it decrement slowly, going from 150 to 0 in about 2 seconds. That\'s why you can do a big scroll and the page keeps moving up/down. \r\n<br><br>\r\n <img src=../images/delta.png alt=elements>\r\n<br><br>\r\nThe scroll with a mouse is different, there\'s a delta, but there\'s only two values, 150 and -150, that means that it is a full force scroll each time, but there\'s no force conservation, so it goes from 150 to 0 instantly. For my purposes, it doesn\'t really change anything, but for lets say a custom scroll, it\'s another story. \r\n<br><br>\r\n<span class=title> The implementation of kay navigation</span>\r\n<br><br>\r\n <img src=../images/arrow.png alt=elements>\r\n<br><br>\r\n', 'images/portfolio.png'),
(3, '2019-06-06 12:13:27', 'procedural-planet', 'The magic of generating a procedural solar system in three.js with the help of canvas. ', 'It took me 16 hours straight to get it to work, with little knowledge of how to do it at first. So many challenges and search to have now a fully procedural solar system. I have to say that stackoverflow can be pretty useful..', 'coming soooon', 'images/procedural.png'),
(4, '2019-06-06 12:23:44', 'speeder-game', 'My very first real canvas game in native js, with a terrain generation algorithm.', 'I had two weeks to make a game using the canvas and js. I wanted to make it as complete as possible, with many options (bonuses, option for generation, speedrun capable). it maybe is my biggest project with that little time, and going back at it, it\'s not that good. ', 'coming sooooon', 'images/speeder.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

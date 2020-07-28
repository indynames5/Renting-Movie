-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 05:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doomovie`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(10) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Username`, `Password`, `FirstName`, `LastName`, `Tel`, `Email`, `Money`) VALUES
(19, 'Alosirise', '0869484897', 'Sompote', 'Eiamworakul', '0869484897', 'www.sompod@hotmail.com', 200),
(20, 'bewza23114', '12345', 'Rachpol', 'Swatpunachot', '0954270570', 's23114bewza@gmail.com', 200),
(21, 'Kengza007', '007zaza', 'Krittamet', 'Wongsakornpiriya', '0612207865', 'indynames@gmail.com', 30),
(22, 'nantipat1113', '289369', 'Nantipat', 'Suwanvong', '0192013893', 'dom_1113@hotmail.com', 200),
(26, 'Endozaki', '0000', 'Withawat', 'Tanoi', '0869484898', 'www.Tiwlip@gmail.com', 200),
(27, 'plaithep780', 'plaikak0456', 'Plaithep', 'Polratanapaibool', '0918231267', 'plaithep780@gmail.com', 200),
(28, 'zzzzz', 'zzzzz', 'zzz', 'zz', '0869484897', 'asdasd@hotmail.com', 200),
(29, 'asdasd', 'asdasd', 'asdasd', 'asdasd', '0869484897', 'www.sompod@hotmail.com', 200),
(31, '1', '1', 'mbn', 'bnmbn', '5555', 'kenglub5@hotmail.com', 200),
(32, '7', '7', 'o', 'KENG', '1', 'kenglub5@hotmail.com', 130),
(34, 'z', 'z', 'z', 'z', '0', 'indynames@gmail.com', 130);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `ID_Movie` int(10) NOT NULL,
  `Name` varchar(75) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Price` int(5) NOT NULL,
  `Year` varchar(5) NOT NULL,
  `Detail` varchar(300) NOT NULL,
  `Picture` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`ID_Movie`, `Name`, `Type`, `Price`, `Year`, `Detail`, `Picture`) VALUES
(1, 'The Dark Knight', 'Action', 60, '2008', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(2, 'Uri: The Surgical Strike', 'Action', 70, '2019', 'Indian army special forces carries a covert operation, avenging the killing of fellow army men at their base by a terrorist group.', 'https://m.media-amazon.com/images/M/MV5BMWU4ZjNlNTQtOGE2MS00NDI0LWFlYjMtMmY3ZWVkMjJkNGRmXkEyXkFqcGdeQXVyNjE1OTQ0NjA@._V1_SY1000_CR0,0,692,1000_AL_.jpg'),
(3, 'The Matrix', 'Action', 55, '1999', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,665,1000_AL_.jpg'),
(4, 'Star Wars: The Empire Strikes Back', 'Action', 50, '1980', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.', 'https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,641,1000_AL_.jpg'),
(5, 'Star Wars: A New Hope', 'Action', 50, '1977', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,643,1000_AL_.jpg'),
(6, 'Spider-Man: Into the Spider-Verse', 'Action', 70, '2018', 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.', 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(7, 'Avengers: Infinity War', 'Action', 70, '2018', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(8, 'Gladiator', 'Action', 60, '2000', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(9, 'Terminator 2: Judgment Day', 'Action', 55, '1991', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 'https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY999_CR0,0,672,999_AL_.jpg'),
(10, 'Oldboy', 'Action', 60, '2003', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 'https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_.jpg'),
(11, 'Star Wars: Return of the Jedi ', 'Action', 50, '1983', 'After a daring mission to rescue Han Solo from Jabba the Hutt, the rebels dispatch to Endor to destroy a more powerful Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor\'s trap.', 'https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SY999_CR0,0,644,999_AL_.jpg'),
(12, 'Neon Genesis Evangelion: The End of Evangelion', 'Action', 60, '1997', 'Concurrent theatrical ending of the TV series Neon Genesis Evangelion (1995).', 'https://m.media-amazon.com/images/M/MV5BOTFhODJjMzktNDhjMy00MmM4LWI5NWQtMDdhOGU1NzYxNzE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg'),
(13, 'Yojimbo ', 'Action', 50, '1961', 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.', 'https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,665,1000_AL_.jpg'),
(14, 'Batman Begins', 'Action', 60, '2005', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.', 'https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_SX750_AL_.jpg'),
(15, 'Haider', 'Action', 65, '2014', 'A young man returns to Kashmir after his father\'s disappearance to confront his uncle - the man he suspects of playing a role in his father\'s fate.', 'https://m.media-amazon.com/images/M/MV5BMjA1NTEwMDMxMF5BMl5BanBnXkFtZTgwODkzMzI0MjE@._V1_SY1000_CR0,0,690,1000_AL_.jpg'),
(16, 'Logan', 'Action', 70, '2017', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.\r\n', 'https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg'),
(17, 'Guardians of the Galaxy', 'Action', 65, '2014', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 'https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(18, 'Mad Max: Fury Road', 'Action', 60, '2015', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 'https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'),
(19, 'The Avengers', 'Action', 60, '2012', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(20, 'Kill Bill: Vol. 1', 'Action', 55, '2003', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.', 'https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
(21, 'Inception ', 'Sci-Fi', 50, '2010', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(22, 'Minority Report', 'Sci-Fi', 60, '2002', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 'https://images-na.ssl-images-amazon.com/images/I/51LaXRjjh7L.jpg'),
(23, 'Avatar', 'Sci-Fi', 70, '2009', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'https://images-na.ssl-images-amazon.com/images/I/61OUGpUfAyL._SY679_.jpg'),
(24, 'Interstellar', 'Sci-Fi', 60, '2014', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'https://www.mauvais-genres.com/19056/interstellar-affiche-de-film-40x60-2014-matthew-mcconaughey-christopher-nolan.jpg'),
(25, 'Back to the Future', 'Sci-Fi', 50, '1985', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'https://images-na.ssl-images-amazon.com/images/I/51pCtX2StZL.jpg'),
(26, '2001: A Space Odyssey', 'Sci-Fi', 50, '1968', 'After discovering a mysterious artifact buried beneath the lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer HAL 9000.', 'https://imgc.allpostersimages.com/img/print/posters/2001-a-space-odyssey_a-G-7933843-0.jpg?w=625&h=959'),
(27, 'Gravity', 'Sci-Fi', 60, '2013', 'Two astronauts work together to survive after an accident leaves them stranded in space.', 'https://cdn.shopify.com/s/files/1/1416/8662/products/gravity_2013_orioginal_film_art_2000x.jpg?v=1551889249'),
(28, 'The Prestige', 'Sci-Fi', 55, '2006', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d2/Prestige_poster.jpg/220px-Prestige_poster.jpg'),
(29, 'E.T. the Extra-Terrestrial', 'Sci-Fi', 55, '1982', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'https://images-na.ssl-images-amazon.com/images/I/511sNRYM5zL.jpg'),
(30, 'The Mist', 'Sci-Fi', 60, '2007', 'A freak storm unleashes a species of bloodthirsty creatures on a small town, where a small band of citizens hole up in a supermarket and fight for their lives.', 'https://images-na.ssl-images-amazon.com/images/I/51Ey7Zb8smL.jpg'),
(31, 'Artificial Intelligence: AI', 'Sci-Fi', 50, '2001', 'A highly advanced robotic boy longs to become \"real\" so that he can regain the love of his human mother.', 'https://images-na.ssl-images-amazon.com/images/I/51zf4LRzKWL.jpg'),
(32, 'Close Encounters of the Third Kind', 'Sci-Fi', 50, '1977', 'Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.', 'https://images-na.ssl-images-amazon.com/images/I/41LL9o87IzL.jpg'),
(33, 'Eternal Sunshine of the Spotless Mind', 'Sci-Fi', 55, '2004', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.', 'https://images-na.ssl-images-amazon.com/images/I/51%2Bwf-vBCUL.jpg'),
(34, 'Twelve Monkeys', 'Sci-Fi', 60, '1995', 'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.', 'https://www.rarerecords.com.au/wp-content/uploads/2016/05/12-MONKEYS-12-Monkeys-Movie-Poster.jpg'),
(35, 'Alien', 'Sci-Fi', 60, '1979', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.', 'https://images-na.ssl-images-amazon.com/images/I/31dKO0hfksL.jpg'),
(36, 'Blade Runner', 'Sci-Fi', 60, '1982', 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.', 'https://images-na.ssl-images-amazon.com/images/I/71PhjEaTZ6L._SY679_.jpg'),
(37, 'Jurassic Park', 'Sci-Fi', 55, '1993', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'https://cdn.shopify.com/s/files/1/0747/3829/products/mNS0422_b1d3edbb-c5f6-40d0-928e-cc2e0982a2a6_1024x1024.jpg?v=1487863873'),
(38, 'Children of Men', 'Sci-Fi', 50, '2006', 'In 2027, in a chaotic world in which women have become somehow infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.', 'https://images-na.ssl-images-amazon.com/images/I/31ULNIDNb9L.jpg'),
(39, 'Source Code ', 'Sci-Fi', 50, '2011', 'A soldier wakes up in someone else\'s body and discovers he\'s part of an experimental government program to find the bomber of a commuter train. A mission he has only 8 minutes to complete.', 'https://i.pinimg.com/originals/9c/ec/16/9cec165475c76eac43fe11b1a5ced3ac.jpg'),
(40, 'The Fountain', 'Sci-Fi', 50, '2006', 'As a modern-day scientist, Tommy is struggling with mortality, desperately searching for the medical breakthrough that will save the life of his cancer-stricken wife, Izzi.', 'https://images-na.ssl-images-amazon.com/images/I/51iVeuZ6F3L.jpg'),
(41, 'Grave of the Fireflies', 'Animation', 60, '1988', 'A young boy and his little sister struggle to survive in Japan during World War II.', 'https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(42, 'Sen to Chihiro no kamikakushi', 'Animation', 50, '2001', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Spirited_Away_Japanese_poster.png/220px-Spirited_Away_Japanese_poster.png'),
(43, 'Sausage Party', 'Animation', 60, '2016', 'A sausage strives to discover the truth about his existence.', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Sausage_Party.png/220px-Sausage_Party.png'),
(44, 'The Lion King', 'Animation', 50, '1994', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 'https://f.ptcdn.info/062/061/000/pir6f51u8dtWNtBQVHW-o.jpg'),
(45, 'Hotaru no haka', 'Animation', 50, '1988', 'A young boy and his little sister struggle to survive in Japan during World War II.', 'https://screenanarchy.com/assets_c/2012/09/hotaru-no-haka-full-thumb-430xauto-32359.jpg'),
(46, 'Kimi no na wa.', 'Animation', 60, '2014', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', 'https://akibatan.com/wp-content/uploads/2015/12/shinkai-makoto-new-anime-movie-kimi-no-na-wa-announced.jpg'),
(47, 'Coco', 'Animation', 55, '2017', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'https://movie.mthai.com/app/uploads/2017/03/Poster-Coco.jpg'),
(48, 'WALL·E', 'Animation', 60, '2008', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 'https://images-na.ssl-images-amazon.com/images/I/51iA8isg59L._SY445_.jpg'),
(49, 'Mononoke-hime', 'Animation', 60, '1997', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', 'https://m.media-amazon.com/images/M/MV5BMTVlNWM4NTAtNDQxYi00YWU5LWIwM2MtZmVjYWFmODZiODE5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY1200_CR110,0,630,1200_AL_.jpg'),
(50, 'Toy Story 3 ', 'Animation', 55, '2010', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.', 'https://images-na.ssl-images-amazon.com/images/I/618Fh5CzWzL._SY445_.jpg'),
(51, 'Toy Story', 'Animation', 50, '1995', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'https://static.posters.cz/image/750/plakatok/toy-story-woody-buzz-i24759.jpg'),
(52, 'Inside Out', 'Animation', 50, '2015', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_.jpg'),
(53, 'Up', 'Animation', 50, '2009', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 'https://vignette.wikia.nocookie.net/transcripts/images/9/97/Disney_and_Pixar%27s_Up_-_iTunes_Movie_Poster.jpg/revision/latest?cb=20170206002656'),
(54, 'Hauru no ugoku shiro', 'Animation', 50, '2004', 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.', 'http://img.soundtrackcollector.com/movie/large/Hauru_No_Ugoku_Shiro_(2004).jpg'),
(55, 'Tonari no Totoro', 'Animation ', 50, '1988', 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.', 'https://upload.wikimedia.org/wikipedia/en/0/02/My_Neighbor_Totoro_-_Tonari_no_Totoro_%28Movie_Poster%29.jpg'),
(56, 'Ookami kodomo no Ame to Yuki', 'Animation', 50, '2012', 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9c/%C5%8Ckami_Kodomo_no_Ame_to_Yuki_poster.jpg/220px-%C5%8Ckami_Kodomo_no_Ame_to_Yuki_poster.jpg'),
(57, 'How to Train Your Dragon ', 'Animation', 50, '2010', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6310/6310476_sa.jpg;maxHeight=640;maxWidth=550'),
(58, 'Finding Nemo', 'Animation', 50, '2003', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'https://images-na.ssl-images-amazon.com/images/I/51-difUGanL._SY445_.jpg'),
(59, 'Monsters, Inc.', 'Animation', 50, '2001', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.', 'https://images-na.ssl-images-amazon.com/images/I/51WP3iZYpLL._SY445_.jpg'),
(60, 'Zootopia', 'Animation', 60, '2016', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.', 'https://lumiere-a.akamaihd.net/v1/images/movie_poster_zootopia_866a1bf2.jpeg?region=0%2C0%2C300%2C450'),
(61, 'Gok-seong', 'Horror', 50, '2016', 'Soon after a stranger arrives in a little village, a mysterious sickness starts spreading. A policeman, drawn into the incident, is forced to solve the mystery in order to save his daughter.', 'https://m.media-amazon.com/images/M/MV5BODkwMTgxNjA2NF5BMl5BanBnXkFtZTgwMDc0OTcwOTE@._V1_.jpg'),
(62, '28 Days Later...', 'Horror', 55, '2002', 'Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.', 'https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'),
(63, 'Busanhaeng', 'Horror', 70, '2015', 'While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.', 'https://4.bp.blogspot.com/-9pCPZW8KaHc/V7hzu3vev8I/AAAAAAAAF_4/5Nk5Xuy_qNI1XCJKh87cEiwoqgBVBVkkACEw/s1600/25.%2BTrain%2BTo%2BBusan.jpg'),
(64, 'The Conjuring', 'Horror', 55, '2013', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Conjuring_poster.jpg/220px-Conjuring_poster.jpg'),
(65, 'Pitch Black', 'Horror', 45, '2000', 'A commercial transport ship and its crew are marooned on a planet full of bloodthirsty creatures that only come out to feast at night. But then, they learn that a month-long eclipse is about to occur.', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/26/Pitch_Black_poster.JPG/220px-Pitch_Black_poster.JPG'),
(66, 'A Quiet Place', 'Horror', 60, '2018', 'In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing.', 'https://upload.wikimedia.org/wikipedia/en/a/a0/A_Quiet_Place_film_poster.png'),
(67, 'Rec', 'Horror', 50, '2007', 'A television reporter and cameraman follow emergency workers into a dark apartment building and are quickly locked inside with something terrifying.', 'https://images-na.ssl-images-amazon.com/images/I/71XBLTWdfRL.jpg'),
(68, 'The VVitch: A New-England Folktale ', 'Horror', 40, '2015', 'A family in 1630s New England is torn apart by the forces of witchcraft, black magic, and possession.', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/The_Witch_poster.png/220px-The_Witch_poster.png'),
(69, 'The Descent ', 'Horror', 50, '2015', 'A caving expedition goes horribly wrong, as the explorers become trapped and ultimately pursued by a strange breed of predators.', 'https://images-na.ssl-images-amazon.com/images/I/41cdS6HCODL._SY445_.jpg'),
(70, 'Ang-ma-reul bo-at-da', 'Horror', 45, '2010', 'A secret agent exacts revenge on a serial killer through a series of captures and releases.', 'https://cdn.shopify.com/s/files/1/2604/9744/products/xhlXnzQRlDab04sUMVR9bzyDPpr_300x300.jpg?v=1550318598'),
(71, 'It Follows ', 'Horrow', 50, '2014', 'A young woman is followed by an unknown supernatural force after a sexual encounter.', 'https://m.media-amazon.com/images/M/MV5BMmU0MjBlYzYtZWY0MC00MjliLWI3ZmUtMzhlZDVjMWVmYWY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(72, 'Insidious', 'Horror', 45, '2010', 'A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further.', 'https://m.media-amazon.com/images/M/MV5BMTYyOTAxMDA0OF5BMl5BanBnXkFtZTcwNzgwNTc1NA@@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(73, 'Martyrs', 'Horror', 40, '2008', 'A young woman\'s quest for revenge against the people who kidnapped and tormented her as a child leads her and a friend, who is also a victim of child abuse, on a terrifying journey into a living hell of depravity.', 'https://m.media-amazon.com/images/M/MV5BYTY0NTZlZjYtNWRmZi00MGRjLTk4ZDctMjE4NjBiZTUyNGNhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR2,0,140,209_AL_.jpg'),
(74, 'The Mist', 'Horror', 45, '2007', 'A freak storm unleashes a species of bloodthirsty creatures on a small town, where a small band of citizens hole up in a supermarket and fight for their lives.', 'https://m.media-amazon.com/images/M/MV5BMTU2NjQyNDY1Ml5BMl5BanBnXkFtZTcwMTk1MDU1MQ@@._V1_UY209_CR1,0,140,209_AL_.jpg'),
(75, 'Sinister', 'Horror', 40, '2012', 'Washed-up true-crime writer Ellison Oswalt finds a box of super 8 home movies that suggest the murder he is currently researching is the work of a serial killer whose work dates back to the 1960s.', 'https://m.media-amazon.com/images/M/MV5BMjI5MTg1Njg0Ml5BMl5BanBnXkFtZTcwNzg2Mjc4Nw@@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(76, 'Batoru rowaiaru', 'Horror', 40, '2000', 'In the future, the Japanese government captures a class of ninth-grade students and forces them to kill each other under the revolutionary \"Battle Royale\" act.', 'https://m.media-amazon.com/images/M/MV5BMTgxMmJhNjItMmFlMS00MWVlLWIyMjktYjUyYTI4MzA0YzgxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR3,0,140,209_AL_.jpg'),
(77, 'Saam gaang yi', 'Horror', 45, '2004', 'An Asian cross-cultural trilogy of horror films from accomplished indie directors.', 'https://m.media-amazon.com/images/M/MV5BNzM5MTM2OTgzOF5BMl5BanBnXkFtZTcwNzc4NTUzMQ@@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(78, 'Saw', 'Horror', 45, '2004', 'Two strangers, who awaken in a room with no recollection of how they got there, soon discover they\'re pawns in a deadly game perpetrated by a notorious serial killer.', 'https://m.media-amazon.com/images/M/MV5BMjE4MDYzNDE1OV5BMl5BanBnXkFtZTcwNDY2OTYwNA@@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(79, 'Eden Lake', 'Horror', 50, '2008', 'Refusing to let anything spoil their romantic weekend break, a young couple confront a gang of loutish youths with terrifyingly brutal consequences.', 'https://m.media-amazon.com/images/M/MV5BMTYwMzE0OTQzN15BMl5BanBnXkFtZTcwOTY5MDIwMg@@._V1_UY209_CR1,0,140,209_AL_.jpg'),
(80, ' The Devil\'s Rejects', 'Horror', 45, '2005', 'The murderous, backwoods Firefly family take to the road to escape a vengeful police force which is not afraid of being as ruthless as their target.', 'https://m.media-amazon.com/images/M/MV5BMjIwMjM1MjM4NV5BMl5BanBnXkFtZTcwNTgyMzUzMw@@._V1_UY209_CR0,0,140,209_AL_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `ID_Transaction` int(10) NOT NULL,
  `ID_Movie` int(10) NOT NULL,
  `ID_Account` int(10) NOT NULL,
  `startedDate` varchar(25) NOT NULL,
  `expiredDate` varchar(25) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`ID_Transaction`, `ID_Movie`, `ID_Account`, `startedDate`, `expiredDate`, `Price`) VALUES
(1, 7, 21, '2019-05-05 ', '2019-05-09 ', 70),
(2, 18, 21, '2019-05-05 ', '2019-05-08 ', 60),
(3, 68, 21, '2019-05-05 ', '2019-05-08 ', 40),
(4, 7, 30, '2019-05-05 ', '2019-05-08 ', 70),
(5, 6, 32, '2019-05-05 ', '2019-05-08 ', 70),
(6, 43, 33, '2019-05-05 ', '2019-05-08 ', 60),
(7, 16, 33, '2019-05-05 ', '2019-05-12 ', 75),
(8, 7, 34, '2019-05-05 ', '2019-05-08 ', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`ID_Movie`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`ID_Transaction`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `ID_Movie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `ID_Transaction` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

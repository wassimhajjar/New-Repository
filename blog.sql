-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 05:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Comedy', 'Comedy', '2023-08-03 08:14:12', '2023-08-03 08:14:12'),
(2, 'Action', 'Action', '2023-08-03 08:14:12', '2023-08-03 08:14:12'),
(3, 'Horror', 'Horror', '2023-08-03 08:15:28', '2023-08-03 08:15:28'),
(4, 'Adventure', 'Adventure', '2023-08-03 08:15:58', '2023-08-03 08:15:58'),
(5, 'Family', 'Family', '2023-08-03 08:16:32', '2023-08-03 08:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_02_094749_create_movies_table', 1),
(6, '2023_08_03_091032_create_categories_table', 1),
(7, '2023_08_10_140212_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `video` text NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `category_id`, `title`, `slug`, `img1`, `img2`, `video`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 2, 'The fast and the furious', 'The-fast-and-the-furious', 'http://127.0.0.1:8000/storage/images/oqnI2Re3oljpiYTkPBCwb3u0zMq61hCOHROZisrB.jpg', 'http://127.0.0.1:8000/storage/images/g8aV66YhKOPzS4ufejSBPxBBGB5BczGSh32YAox7.jpg', 'http://127.0.0.1:8000/storage/videos/JzddzeCvk9c74umsUal7ssQUrYdSp5bpk8CtT9As.mp4', 'The Fast and the Furious is a 2001 action film directed by Rob Cohen from a screenplay by Gary Scott Thompson, Erik Bergquist, and David Ayer, based on the Vibe magazine article \"Racer X\" by Ken Li. The first installment in the Fast & Furious franchise, it stars Paul Walker, Vin Diesel, Michelle Rodriguez, Jordana Brewster, Rick Yune, Chad Lindberg, Johnny Strong, and Ted Levine. In the film, Brian O\'Conner (Walker), an LAPD officer, goes undercover in the street racing world to investigate a group of unknown hijackers, believed to be led by Dominic Toretto (Diesel).', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/g8aV66YhKOPzS4ufejSBPxBBGB5BczGSh32YAox7.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/g8aV66YhKOPzS4ufejSBPxBBGB5BczGSh32YAox7.jpg\">\n            <h1>Th e fast and the furious</h1>\n            <p>The Fast and the Furious is a 2001 action film directed by Rob Cohen from a screenplay by Gary Scott Thompson, Erik Bergquist, and David Ayer, based on the Vibe magazine article \"Racer X\" by Ken Li. The first installment in the Fast & Furious franchise, it stars Paul Walker, Vin Diesel, Michelle Rodriguez, Jordana Brewster, Rick Yune, Chad Lindberg, Johnny Strong, and Ted Levine. In the film, Brian O\'Conner (Walker), an LAPD officer, goes undercover in the street racing world to investigate a group of unknown hijackers, believed to be led by Dominic Toretto (Diesel).</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/JzddzeCvk9c74umsUal7ssQUrYdSp5bpk8CtT9As.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/JzddzeCvk9c74umsUal7ssQUrYdSp5bpk8CtT9As.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 08:59:52', '2023-08-25 09:16:47', NULL),
(2, 2, '2 fast 2 furious', '2-fast-2-furious', 'http://127.0.0.1:8000/storage/images/RvMepLI9YWXELgS0psqmgMiJJewgDxdulOkhhTyq.jpg', 'http://127.0.0.1:8000/storage/images/qbt5CEM2XoelfTLe5j0XgiIHE4lIwLPqs8oKUwBF.jpg', 'http://127.0.0.1:8000/storage/videos/DJb9plxQ84h0qNvbJlf1tqZDfbu043oGe314iwO1.mp4', '2 Fast 2 Furious is a 2003 action film directed by John Singleton from a screenplay by Michael Brandt and Derek Haas, based on a story by Brandt, Haas, and Gary Scott Thompson. It is the sequel to The Fast and the Furious (2001) and the second installment in the Fast & Furious franchise. The film stars Paul Walker as Brian O\'Conner alongside Tyrese Gibson, Eva Mendes, Cole Hauser, Chris \"Ludacris\" Bridges, and James Remar. In the film, ex-LAPD officer Brian O\'Conner and his friend Roman Pearce (Gibson) go undercover for the United States Customs Service and the FBI to apprehend drug lord Carter Verone (Hauser) in exchange for the erasure of their criminal records.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/qbt5CEM2XoelfTLe5j0XgiIHE4lIwLPqs8oKUwBF.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/qbt5CEM2XoelfTLe5j0XgiIHE4lIwLPqs8oKUwBF.jpg\">\n            <h1>2 fast 2 furious</h1>\n            <p>2 Fast 2 Furious is a 2003 action film directed by John Singleton from a screenplay by Michael Brandt and Derek Haas, based on a story by Brandt, Haas, and Gary Scott Thompson. It is the sequel to The Fast and the Furious (2001) and the second installment in the Fast & Furious franchise. The film stars Paul Walker as Brian O\'Conner alongside Tyrese Gibson, Eva Mendes, Cole Hauser, Chris \"Ludacris\" Bridges, and James Remar. In the film, ex-LAPD officer Brian O\'Conner and his friend Roman Pearce (Gibson) go undercover for the United States Customs Service and the FBI to apprehend drug lord Carter Verone (Hauser) in exchange for the erasure of their criminal records.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/DJb9plxQ84h0qNvbJlf1tqZDfbu043oGe314iwO1.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/DJb9plxQ84h0qNvbJlf1tqZDfbu043oGe314iwO1.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:10:39', '2023-08-25 09:10:39', NULL),
(3, 2, 'Fast and furious 4', 'Fast-and-furious-4', 'http://127.0.0.1:8000/storage/images/g9RjNYcloRtsaq227Eqzb0WsZraIvwOJhIpflKYP.jpg', 'http://127.0.0.1:8000/storage/images/NQLO6cEJaA0P66UQ9uSRQJYX0jhWuR54cv747jJG.jpg', 'http://127.0.0.1:8000/storage/videos/MRgQgfK3v0wgt3W0j38Y9RgW6EqQn6x8DxLdLsc3.mp4', 'Fast & Furious (also known as Fast & Furious 4)[6] is a 2009 action film directed by Justin Lin and written by Chris Morgan. It is the direct sequel to The Fast and the Furious and 2 Fast 2 Furious as well as the fourth installment in the Fast & Furious franchise. It stars Vin Diesel, Paul Walker, Michelle Rodriguez, and Jordana Brewster. In the film, Dominic Toretto (Diesel) and FBI agent Brian O\'Conner (Walker) are forced to work together to avenge the murder of Toretto\'s lover Letty Ortiz (Rodriguez) and apprehend drug lord Arturo Braga (John Ortiz).', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/NQLO6cEJaA0P66UQ9uSRQJYX0jhWuR54cv747jJG.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/NQLO6cEJaA0P66UQ9uSRQJYX0jhWuR54cv747jJG.jpg\">\n            <h1>Fast and furious 4</h1>\n            <p>Fast & Furious (also known as Fast & Furious 4)[6] is a 2009 action film directed by Justin Lin and written by Chris Morgan. It is the direct sequel to The Fast and the Furious and 2 Fast 2 Furious as well as the fourth installment in the Fast & Furious franchise. It stars Vin Diesel, Paul Walker, Michelle Rodriguez, and Jordana Brewster. In the film, Dominic Toretto (Diesel) and FBI agent Brian O\'Conner (Walker) are forced to work together to avenge the murder of Toretto\'s lover Letty Ortiz (Rodriguez) and apprehend drug lord Arturo Braga (John Ortiz).</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/MRgQgfK3v0wgt3W0j38Y9RgW6EqQn6x8DxLdLsc3.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/MRgQgfK3v0wgt3W0j38Y9RgW6EqQn6x8DxLdLsc3.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:13:42', '2023-08-25 09:13:42', NULL),
(4, 2, 'Fast 5', 'Fast-5', 'http://127.0.0.1:8000/storage/images/LtTujTqqSrq1fnfKaiL5lwAtZPZt5ZOFoivEZwae.jpg', 'http://127.0.0.1:8000/storage/images/ZNu17KYremeYGG76nG2z6SXCwapPpYNBAmF2tkk5.jpg', 'http://127.0.0.1:8000/storage/videos/8qVcbQFqWrvFc7VMP3sxVkRfk3QgZOazDeayF2vq.mp4', 'Fast Five (also known as Fast & Furious 5[1] or Fast & Furious 5: Rio Heist[5]) is a 2011 action film directed by Justin Lin and written by Chris Morgan. It is the sequel to Fast & Furious (2009) and the fifth installment in the Fast & Furious franchise. The film stars Vin Diesel as Dominic Toretto and Paul Walker as Brian O\'Conner, alongside Jordana Brewster, Tyrese Gibson, Chris \"Ludacris\" Bridges, Matt Schulze, Sung Kang and Dwayne Johnson. In the film, Dom and Brian, along with Dom\'s sister Mia (Brewster) plan a heist to steal $100 million from corrupt businessman Hernan Reyes (Almeida) while being pursued for arrest by U.S. Diplomatic Security Service (DSS) agent Luke Hobbs (Johnson).', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/ZNu17KYremeYGG76nG2z6SXCwapPpYNBAmF2tkk5.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/ZNu17KYremeYGG76nG2z6SXCwapPpYNBAmF2tkk5.jpg\">\n            <h1>Fast 5</h1>\n            <p>Fast Five (also known as Fast & Furious 5[1] or Fast & Furious 5: Rio Heist[5]) is a 2011 action film directed by Justin Lin and written by Chris Morgan. It is the sequel to Fast & Furious (2009) and the fifth installment in the Fast & Furious franchise. The film stars Vin Diesel as Dominic Toretto and Paul Walker as Brian O\'Conner, alongside Jordana Brewster, Tyrese Gibson, Chris \"Ludacris\" Bridges, Matt Schulze, Sung Kang and Dwayne Johnson. In the film, Dom and Brian, along with Dom\'s sister Mia (Brewster) plan a heist to steal $100 million from corrupt businessman Hernan Reyes (Almeida) while being pursued for arrest by U.S. Diplomatic Security Service (DSS) agent Luke Hobbs (Johnson).</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/8qVcbQFqWrvFc7VMP3sxVkRfk3QgZOazDeayF2vq.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/8qVcbQFqWrvFc7VMP3sxVkRfk3QgZOazDeayF2vq.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:18:19', '2023-08-25 09:18:19', NULL),
(5, 3, 'Anabelle 1', 'Anabelle', 'http://127.0.0.1:8000/storage/images/Fu1fDwT3t9dQKHRFWGqiFkX9RrMJcBMhLUii48u5.jpg', 'http://127.0.0.1:8000/storage/images/UyZmC4LGPdAieEgZqyyztvQjO6LjuGt9RW7RJxgv.jpg', 'http://127.0.0.1:8000/storage/videos/9YDfHhrwAZ7p0jQiZWR3yr1yeh33zOdvXcnLlzG0.mp4', 'Annabelle is a 2014 American supernatural horror film directed by John R. Leonetti, written by Gary Dauberman and produced by Peter Safran and James Wan. It is a prequel to the 2013 film The Conjuring and the second installment in The Conjuring Universe franchise. The film was inspired by a story of a doll named Annabelle told by Ed and Lorraine Warren.[3] The film stars Annabelle Wallis, Ward Horton, and Alfre Woodard.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/UyZmC4LGPdAieEgZqyyztvQjO6LjuGt9RW7RJxgv.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/UyZmC4LGPdAieEgZqyyztvQjO6LjuGt9RW7RJxgv.jpg\">\n            <h1>Anabelle 1</h1>\n            <p>Annabelle is a 2014 American supernatural horror film directed by John R. Leonetti, written by Gary Dauberman and produced by Peter Safran and James Wan. It is a prequel to the 2013 film The Conjuring and the second installment in The Conjuring Universe franchise. The film was inspired by a story of a doll named Annabelle told by Ed and Lorraine Warren.[3] The film stars Annabelle Wallis, Ward Horton, and Alfre Woodard.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/9YDfHhrwAZ7p0jQiZWR3yr1yeh33zOdvXcnLlzG0.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/9YDfHhrwAZ7p0jQiZWR3yr1yeh33zOdvXcnLlzG0.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:20:16', '2023-08-25 09:20:16', NULL),
(6, 3, 'Anabelle comes home', 'Anabelle-comes-home', 'http://127.0.0.1:8000/storage/images/36MOY7NpOypUfNagpvxfpyEiVbT6rm14aJKXCjw0.jpg', 'http://127.0.0.1:8000/storage/images/jlRjG0wljWbcFEf5qq5MpuYGzZKWdsKejHVWJ04p.jpg', 'http://127.0.0.1:8000/storage/videos/PCFhCBh2UjwqqGGXPBHsLi7OlP7ySUGL8LjZAknp.mp4', 'Annabelle Comes Home is a 2019 American supernatural horror film written and directed by Gary Dauberman, in his directorial debut, from a story by Dauberman and James Wan, who also served as producer with Peter Safran. It serves as a sequel to 2014\'s Annabelle and 2017\'s Annabelle: Creation, and as the seventh installment in The Conjuring Universe franchise. The film stars Mckenna Grace, Madison Iseman, and Katie Sarife, along with Vera Farmiga and Patrick Wilson, who reprise their roles as Ed and Lorraine Warren.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/jlRjG0wljWbcFEf5qq5MpuYGzZKWdsKejHVWJ04p.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/jlRjG0wljWbcFEf5qq5MpuYGzZKWdsKejHVWJ04p.jpg\">\n            <h1>Anabelle comes home</h1>\n            <p>Annabelle Comes Home is a 2019 American supernatural horror film written and directed by Gary Dauberman, in his directorial debut, from a story by Dauberman and James Wan, who also served as producer with Peter Safran. It serves as a sequel to 2014\'s Annabelle and 2017\'s Annabelle: Creation, and as the seventh installment in The Conjuring Universe franchise. The film stars Mckenna Grace, Madison Iseman, and Katie Sarife, along with Vera Farmiga and Patrick Wilson, who reprise their roles as Ed and Lorraine Warren.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/PCFhCBh2UjwqqGGXPBHsLi7OlP7ySUGL8LjZAknp.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/PCFhCBh2UjwqqGGXPBHsLi7OlP7ySUGL8LjZAknp.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:22:24', '2023-08-25 09:22:24', NULL),
(7, 1, 'Home alone 1', 'Home-alone-1', 'http://127.0.0.1:8000/storage/images/RXWQw8tkjiUFud1ADy1eFv3Zv7GlIoaLx31EmuJ2.jpg', 'http://127.0.0.1:8000/storage/images/FDyiOcJH8pfQtklSGIdiA4qGMf8wE6YSpX81K3mB.jpg', 'http://127.0.0.1:8000/storage/videos/G3M8FgjVtWEC8dsHEVEfhBi4W7eZoieFqbZ2Fe0a.mp4', 'Home Alone is a 1990 American Christmas comedy film directed by Chris Columbus and written and produced by John Hughes. The first film in the Home Alone franchise, the film stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O\'Hara. Culkin plays Kevin McCallister, a boy who defends his suburban Chicago home from a home invasion after his family accidentally leaves him behind on their Christmas vacation to Paris', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/FDyiOcJH8pfQtklSGIdiA4qGMf8wE6YSpX81K3mB.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/FDyiOcJH8pfQtklSGIdiA4qGMf8wE6YSpX81K3mB.jpg\">\n            <h1>Home alone 1</h1>\n            <p>Home Alone is a 1990 American Christmas comedy film directed by Chris Columbus and written and produced by John Hughes. The first film in the Home Alone franchise, the film stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O\'Hara. Culkin plays Kevin McCallister, a boy who defends his suburban Chicago home from a home invasion after his family accidentally leaves him behind on their Christmas vacation to Paris</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/G3M8FgjVtWEC8dsHEVEfhBi4W7eZoieFqbZ2Fe0a.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/G3M8FgjVtWEC8dsHEVEfhBi4W7eZoieFqbZ2Fe0a.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:24:18', '2023-08-25 09:24:18', NULL),
(8, 1, 'Home alone 2', 'Home-alone-2', 'images/i0TC35OP3UVVb6XFDITLXnM780PCxOKiOVV6M4y5.jpg', 'images/LcF2jHCniVGhri32YAMEK0ng5ZnUCmvksKHuk2nd.jpg', 'http://127.0.0.1:8000/storage/videos/rcjE5ebwLzCfLbYdrtuJhsjznWiFk9Tr4di4Pqhe.mp4', 'Home Alone 2: Lost in New York is a 1992 American Christmas comedy film directed by Chris Columbus and written and produced by John Hughes. The sequel to the 1990 film Home Alone and the second film in the Home Alone franchise, the film stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, Tim Curry, Brenda Fricker, and Catherine O\'Hara. It follows Kevin McCallister as he is separated from his family on their holiday vacation to Florida, this time in New York City where he has another encounter with the Wet Bandits after their escape during a prison riot.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/58Kw0B7IhzMIMkLSjwEjU6WXKySoQwudP9WTpNsS.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/58Kw0B7IhzMIMkLSjwEjU6WXKySoQwudP9WTpNsS.jpg\">\n            <h1>Home alone 2</h1>\n            <p>Home Alone 2: Lost in New York is a 1992 American Christmas comedy film directed by Chris Columbus and written and produced by John Hughes. The sequel to the 1990 film Home Alone and the second film in the Home Alone franchise, the film stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, Tim Curry, Brenda Fricker, and Catherine O\'Hara. It follows Kevin McCallister as he is separated from his family on their holiday vacation to Florida, this time in New York City where he has another encounter with the Wet Bandits after their escape during a prison riot.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/9Fg7wlMjRfJVlm02qCb6ggMMPW5hTuz4J7bCJukx.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/9Fg7wlMjRfJVlm02qCb6ggMMPW5hTuz4J7bCJukx.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:25:25', '2023-08-25 10:23:38', NULL),
(9, 1, 'Home alone 3', 'Home-alone-3', 'http://127.0.0.1:8000/storage/images/SHQynuO6MgvlRoldhamaztdbGAlTcIwo4hOLsiM1.jpg', 'http://127.0.0.1:8000/storage/images/4ms5CO1k2HGfNJglcrj5cbmfEM9zCcDcVuBZmlpW.jpg', 'http://127.0.0.1:8000/storage/videos/8qRsZRUlLUklfVLWUBjkaasYVLLxeEQa1axIEzo8.mp4', 'Home Alone 3 is a 1997 American family comedy film directed by Raja Gosnell in his directorial debut, written and co-produced by John Hughes, and starring Alex D. Linz and Haviland Morris. The film tells the story of an 8-year-old boy who defends his home from a dangerous band of international criminals working for a terrorist organization. It is the third film in the Home Alone franchise, and the first not to feature actor Macaulay Culkin, director Chris Columbus, or composer John Williams. It is also the final film in the Home Alone franchise to receive a theatrical release.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/4ms5CO1k2HGfNJglcrj5cbmfEM9zCcDcVuBZmlpW.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/4ms5CO1k2HGfNJglcrj5cbmfEM9zCcDcVuBZmlpW.jpg\">\n            <h1>Home alone 3</h1>\n            <p>Home Alone 3 is a 1997 American family comedy film directed by Raja Gosnell in his directorial debut, written and co-produced by John Hughes, and starring Alex D. Linz and Haviland Morris. The film tells the story of an 8-year-old boy who defends his home from a dangerous band of international criminals working for a terrorist organization. It is the third film in the Home Alone franchise, and the first not to feature actor Macaulay Culkin, director Chris Columbus, or composer John Williams. It is also the final film in the Home Alone franchise to receive a theatrical release.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/8qRsZRUlLUklfVLWUBjkaasYVLLxeEQa1axIEzo8.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/8qRsZRUlLUklfVLWUBjkaasYVLLxeEQa1axIEzo8.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:26:38', '2023-08-25 09:26:38', NULL),
(10, 4, 'Journey to the center of the earth', 'Journey-to-the-center-of-the-earth', 'http://127.0.0.1:8000/storage/images/SNFizucsjy2nUYpXSp1Rq0gVhJrfFN6WtBJMSkWK.jpg', 'http://127.0.0.1:8000/storage/images/roujEvznRgt4GLPadfYHVgpwhEaVL3x6GxzgzH7l.jpg', 'http://127.0.0.1:8000/storage/videos/kMLhbj87mxUn2W3xGRJUUbgrUq4ZspFO2NCVQyoV.mp4', 'Journey to the Center of the Earth (also promoted as Journey to the Center of the Earth 3-D or Journey 3D) is a 2008 American 3D science fantasy action-adventure film directed by Eric Brevig and starring Brendan Fraser in the main role, Josh Hutcherson, Anita Briem, and Seth Meyers. Produced by New Line Cinema, it is an adaptation of Jules Verne\'s 1864 novel (which had previously been adapted multiple times, most notably in the 1959 film of the same name), and was released in 3D theaters by Warner Bros. Pictures on July 11, 2008.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/roujEvznRgt4GLPadfYHVgpwhEaVL3x6GxzgzH7l.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/roujEvznRgt4GLPadfYHVgpwhEaVL3x6GxzgzH7l.jpg\">\n            <h1>Journey to the center of the earth</h1>\n            <p>Journey to the Center of the Earth (also promoted as Journey to the Center of the Earth 3-D or Journey 3D) is a 2008 American 3D science fantasy action-adventure film directed by Eric Brevig and starring Brendan Fraser in the main role, Josh Hutcherson, Anita Briem, and Seth Meyers. Produced by New Line Cinema, it is an adaptation of Jules Verne\'s 1864 novel (which had previously been adapted multiple times, most notably in the 1959 film of the same name), and was released in 3D theaters by Warner Bros. Pictures on July 11, 2008.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/kMLhbj87mxUn2W3xGRJUUbgrUq4ZspFO2NCVQyoV.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/kMLhbj87mxUn2W3xGRJUUbgrUq4ZspFO2NCVQyoV.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:28:48', '2023-08-25 09:28:48', NULL),
(11, 4, 'Journey 2 to the center of the earth', 'Journey-2-to-the-center-of-the-earth', 'http://127.0.0.1:8000/storage/images/KtFAX1njaAAaqPWbR6LUcYBVVJ3tvXxH7gqf7Fx9.jpg', 'http://127.0.0.1:8000/storage/images/H4wDKqqefK2x8hAaaZFooCskuCFdCeOci5J0LJdV.jpg', 'http://127.0.0.1:8000/storage/videos/UuLI0GHlsgKcq6ercw2Np2eNm6SOWwWVaowDNiqd.mp4', 'Journey 2: The Mysterious Island is a 2012 American science fantasy action-adventure film[4] directed by Brad Peyton and produced by Beau Flynn, Tripp Vinson and Charlotte Huggins. A sequel to Journey to the Center of the Earth (2008), the film is based on Jules Verne\'s The Mysterious Island (1875). It stars Dwayne Johnson, Michael Caine, Josh Hutcherson, Vanessa Hudgens, Luis Guzmán, and Kristin Davis. The storyline was written by Richard Outten, Brian Gunn and Mark Gunn, and the screenplay by Brian and Mark Gunn.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/H4wDKqqefK2x8hAaaZFooCskuCFdCeOci5J0LJdV.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/H4wDKqqefK2x8hAaaZFooCskuCFdCeOci5J0LJdV.jpg\">\n            <h1>Journey 2 to the center of the earth</h1>\n            <p>Journey 2: The Mysterious Island is a 2012 American science fantasy action-adventure film[4] directed by Brad Peyton and produced by Beau Flynn, Tripp Vinson and Charlotte Huggins. A sequel to Journey to the Center of the Earth (2008), the film is based on Jules Verne\'s The Mysterious Island (1875). It stars Dwayne Johnson, Michael Caine, Josh Hutcherson, Vanessa Hudgens, Luis Guzmán, and Kristin Davis. The storyline was written by Richard Outten, Brian Gunn and Mark Gunn, and the screenplay by Brian and Mark Gunn.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/UuLI0GHlsgKcq6ercw2Np2eNm6SOWwWVaowDNiqd.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/UuLI0GHlsgKcq6ercw2Np2eNm6SOWwWVaowDNiqd.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:30:45', '2023-08-25 09:30:45', NULL),
(12, 4, 'King Kong', 'King-Kong', 'http://127.0.0.1:8000/storage/images/ZiHKj41M29sjBx5ajHZjPDbvk4lRQek8LEMHQhWJ.jpg', 'http://127.0.0.1:8000/storage/images/TcRxQAZUBKz7QXobAQ8lMH31Y58jr3nkqKhA8vCk.jpg', 'http://127.0.0.1:8000/storage/videos/e77xvSS8XJjSUtjPFcdpBuYivTwKBZblSdxhwXeK.mp4', 'King Kong is a 2005 epic adventure monster film co-written, produced, and directed by Peter Jackson. It is the eighth entry in the King Kong franchise and the second remake of the 1933 film of the same title, following the 1976 film. The film stars Andy Serkis, Naomi Watts, Jack Black, and Adrien Brody. Set in 1933, it follows the story of an ambitious filmmaker who coerces his cast and hired ship crew to travel to mysterious Skull Island. There they encounter prehistoric creatures and a legendary giant gorilla known as Kong, whom they capture and take to New York City.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/TcRxQAZUBKz7QXobAQ8lMH31Y58jr3nkqKhA8vCk.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/TcRxQAZUBKz7QXobAQ8lMH31Y58jr3nkqKhA8vCk.jpg\">\n            <h1>King Kong</h1>\n            <p>King Kong is a 2005 epic adventure monster film co-written, produced, and directed by Peter Jackson. It is the eighth entry in the King Kong franchise and the second remake of the 1933 film of the same title, following the 1976 film. The film stars Andy Serkis, Naomi Watts, Jack Black, and Adrien Brody. Set in 1933, it follows the story of an ambitious filmmaker who coerces his cast and hired ship crew to travel to mysterious Skull Island. There they encounter prehistoric creatures and a legendary giant gorilla known as Kong, whom they capture and take to New York City.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/e77xvSS8XJjSUtjPFcdpBuYivTwKBZblSdxhwXeK.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/e77xvSS8XJjSUtjPFcdpBuYivTwKBZblSdxhwXeK.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:36:38', '2023-08-25 09:36:38', NULL),
(13, 5, 'The mask', 'The-mask', 'http://127.0.0.1:8000/storage/images/tGHzIHe383Xs4U0MyzEHQnYkJR7ACvl9n97Df6CJ.jpg', 'http://127.0.0.1:8000/storage/images/MO1G5PLG381ozZZA9LbGyBVDo97iGz70xpFD9fui.jpg', 'http://127.0.0.1:8000/storage/videos/ceQCLN4qRxsR46XdZtUlN8s0kDPoIKI3tvHFWDBE.mp4', 'The Mask is a 1994 American black comedy superhero film directed by Chuck Russell and produced by Bob Engelman from a screenplay by Mike Werb and a story by Michael Fallon and Mark Verheiden. It is the first installment in the Mask franchise, based on the comics published by Dark Horse Comics. It stars Jim Carrey in the title role along with Peter Riegert, Peter Greene, Amy Yasbeck, Richard Jeni, and Cameron Diaz in her film debut. Carrey plays Stanley Ipkiss, an ordinary man who finds a magical wooden green mask that transforms him into the Mask, a green-faced troublemaker with the ability to animate and alter himself and his surroundings at will. Filming began on August 30, 1993, and concluded in October 1993.', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/MO1G5PLG381ozZZA9LbGyBVDo97iGz70xpFD9fui.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/MO1G5PLG381ozZZA9LbGyBVDo97iGz70xpFD9fui.jpg\">\n            <h1>The mask</h1>\n            <p>The Mask is a 1994 American black comedy superhero film directed by Chuck Russell and produced by Bob Engelman from a screenplay by Mike Werb and a story by Michael Fallon and Mark Verheiden. It is the first installment in the Mask franchise, based on the comics published by Dark Horse Comics. It stars Jim Carrey in the title role along with Peter Riegert, Peter Greene, Amy Yasbeck, Richard Jeni, and Cameron Diaz in her film debut. Carrey plays Stanley Ipkiss, an ordinary man who finds a magical wooden green mask that transforms him into the Mask, a green-faced troublemaker with the ability to animate and alter himself and his surroundings at will. Filming began on August 30, 1993, and concluded in October 1993.</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/ceQCLN4qRxsR46XdZtUlN8s0kDPoIKI3tvHFWDBE.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/ceQCLN4qRxsR46XdZtUlN8s0kDPoIKI3tvHFWDBE.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 09:37:35', '2023-08-25 09:37:35', NULL),
(14, 1, 'flfkdjf', 'ffdsf-jghgf', 'http://127.0.0.1:8000/storage/images/ja7LKYTMPr6bdJ7HcWZmaX20LmoVxqCiVy6wjPkJ.jpg', 'http://127.0.0.1:8000/storage/images/ttAO42Y6MijFLgdnV49xI6ycG5UcVaISpLOw34uO.jpg', 'http://127.0.0.1:8000/storage/videos/mF3zR5UUfpnu7eKB6SHES9vlHusX9fjaVi4JYwQm.mp4', 'dflkdsfdlfdflkfefe', '<div class=\"main-container \">\n            <img src=\"http://127.0.0.1:8000/storage/images/ttAO42Y6MijFLgdnV49xI6ycG5UcVaISpLOw34uO.jpg\" alt=\"http://127.0.0.1:8000/storage/public/images/ttAO42Y6MijFLgdnV49xI6ycG5UcVaISpLOw34uO.jpg\">\n            <h1>flfkdjf</h1>\n            <p>dflkdsfdlfdflkfefe</p>\n            <button class=\"btn\">Watch now</button>\n        </div>\n        <div class=\"trailer-container active\">\n        <video  src=\"http://127.0.0.1:8000/storage/videos/mF3zR5UUfpnu7eKB6SHES9vlHusX9fjaVi4JYwQm.mp4\" alt=\"http://127.0.0.1:8000/storage/public/videos/mF3zR5UUfpnu7eKB6SHES9vlHusX9fjaVi4JYwQm.mp4\" controls></video>\n             <i class=\"fa-sharp fa-solid fa-xmark fa-2x close-icon\"></i>\n        </div>\n        <div>\n            <h1 class=\"head-comment\">Comments<h1>\n        </div>', '2023-08-25 10:45:48', '2023-08-25 10:45:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `isadmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JaneDoe', 'Jane Doe', 'JaneDoe@gmail.com', '$2y$10$0CKjFZDO7OX/Vq7ydgiGhOnoiJO3G7Sy6VvutFrwjR8RTvjtXQMQa', 1, NULL, '2023-08-17 11:58:17', '2023-08-17 11:58:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

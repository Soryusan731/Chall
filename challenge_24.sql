-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 03:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `challenge_24`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2y$12$LUKrLXPQB64f4gzc/ZQZB.31z5HeO0Q2YCJTQRlxbJTjqmilIh1SG', '2024-07-28 06:08:25', '2024-07-28 06:08:25'),
(4, 'admin@admin.com', '$2y$12$YzChzQphhxJQPIs2ErTfs.FTcQd0//PiOUICvNp3mW4tr9qUipou.', '2024-07-28 09:05:46', '2024-07-28 09:05:46');

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
(1, '2024_07_28_075025_create_projects_table', 1),
(2, '2024_07_28_075141_create_admin_users_table', 1),
(3, '2024_07_28_082129_create_sessions_table', 2),
(4, '2024_07_28_082358_add_deleted_at_to_projects_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `subtitle`, `description`, `image`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Recusandae et et totam.', 'Vitae maiores ab qui.', 'Minus earum tempore corrupti molestiae. Inventore laboriosam et voluptates. Nulla dolorem repellendus amet exercitationem ipsam. Aut a non est voluptates.', 'https://via.placeholder.com/640x480.png/004455?text=et', 'http://www.upton.biz/et-adipisci-porro-sint-porro-nulla.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(2, 'Quia pariatur quia sed debitis laboriosam sit.', 'Esse optio iure eius non aperiam nam quos at.', 'Aliquam corporis sint et est aliquam. Corporis ut vero ratione qui qui exercitationem. Eos ut earum optio ullam laboriosam dolor.', 'https://via.placeholder.com/640x480.png/004433?text=reiciendis', 'http://www.torphy.com/dicta-veniam-suscipit-libero-distinctio-accusantium-maxime-ea', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(3, 'Ea commodi distinctio dolore sint minus deserunt.', 'Sit quo consequatur praesentium deserunt culpa aut.', 'Possimus ut iste architecto dolorem quia dolorem. Dolores eveniet non alias molestias rerum quibusdam. Aut amet consequatur molestiae eligendi.', 'https://via.placeholder.com/640x480.png/006622?text=facere', 'http://www.marvin.biz/', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(4, 'Perferendis hic iure tempore qui eveniet distinctio voluptates.', 'Voluptas ut consectetur velit qui porro sint voluptatum.', 'Illum autem est quibusdam ea cumque. Sint et esse possimus rerum distinctio quia. Maiores sed placeat repudiandae dicta ad enim. Consequuntur consequuntur laudantium voluptatem repellendus repudiandae harum beatae.', 'https://via.placeholder.com/640x480.png/0055ee?text=sit', 'http://littel.com/', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(5, 'Perspiciatis iure ipsum vero molestias dolores earum quasi dicta.', 'Aut quos id sint temporibus.', 'Non maxime cum quia non debitis est quisquam. Amet qui modi ratione voluptatibus sint omnis. Aut recusandae ullam nisi voluptates quos est dolorem.', 'https://via.placeholder.com/640x480.png/00bbee?text=deleniti', 'http://www.pfannerstill.org/atque-veniam-nihil-harum-aspernatur-sit-quae-aut.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(6, 'Repellendus fugit et ratione sed.', 'Possimus ea dicta saepe at qui dolores.', 'Numquam accusantium impedit aut mollitia aut id aut. Cupiditate consectetur ut unde quibusdam non libero. Quia optio dolores architecto ut culpa porro ut rerum.', 'https://via.placeholder.com/640x480.png/0066dd?text=nulla', 'http://green.com/repellat-totam-vero-rerum-qui-recusandae-mollitia.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(7, 'Temporibus dolorem autem nesciunt qui magnam incidunt ut.', 'Quidem ipsam et excepturi.', 'Similique impedit et qui voluptatem. Et voluptates magnam quas temporibus incidunt id. Cupiditate in velit voluptas deleniti accusantium.', 'https://via.placeholder.com/640x480.png/00ee88?text=qui', 'http://www.graham.com/ducimus-doloremque-eos-molestiae-facere.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(8, 'Accusantium aliquid laudantium et reiciendis consequatur nihil iure.', 'Fugit consequatur sint consequatur est vitae quis veritatis.', 'Illum ratione quas sint et blanditiis qui qui. Ea aperiam cumque cumque. Accusamus sit illum id molestiae impedit occaecati repellat.', 'https://via.placeholder.com/640x480.png/002255?text=et', 'http://www.armstrong.info/qui-et-reprehenderit-possimus-animi-odio.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(9, 'Voluptas soluta modi sit beatae labore deleniti sint.', 'Delectus placeat debitis illum laudantium quibusdam.', 'Vel corrupti enim fugiat non fugiat beatae sit eos. Velit quas modi officiis qui eveniet veniam. Qui iusto temporibus deleniti ut nihil.', 'https://via.placeholder.com/640x480.png/007788?text=quia', 'http://raynor.net/aliquam-quos-quis-quia-sit.html', '2024-07-28 06:04:59', '2024-07-28 06:04:59', NULL),
(10, 'Distinctio tempora voluptas et quaerat quia at sint.', 'Ut nostrum non qui dicta aliquam.', 'Sapiente id minus et soluta quos. Eos voluptas laudantium consequatur quibusdam pariatur hic dolores et.', 'https://via.placeholder.com/640x480.png/000077?text=in', 'http://www.schimmel.info/dolor-asperiores-reprehenderit-non-ut-doloremque.html', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(11, 'Iusto totam placeat voluptas non.', 'Ullam quaerat qui alias atque.', 'In voluptas est et. Dolorem in dolorum nihil eveniet et quidem blanditiis. Ea hic aperiam odio cumque sed ut.', 'https://via.placeholder.com/640x480.png/007766?text=fugit', 'http://www.schamberger.info/voluptatem-qui-et-tempore-autem-repudiandae-eveniet-illum.html', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(12, 'Vel praesentium et excepturi.', 'Qui dolores natus est illo quia dicta.', 'Sed enim voluptatem velit voluptatem soluta. Omnis fugiat saepe nihil voluptas saepe. Est consequatur vitae voluptas est repellendus eum eos. Sint consequatur non iusto porro et quas occaecati.', 'https://via.placeholder.com/640x480.png/00ff99?text=a', 'http://lang.org/animi-est-aliquam-sunt', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(13, 'Et illo quis totam aspernatur.', 'Dolore dolores officiis placeat.', 'Expedita non aperiam quas similique. Inventore ut et temporibus reprehenderit autem vitae dicta quaerat. Voluptas ut expedita libero officiis aut. Magni provident fuga aut dicta. Ut voluptatibus velit cupiditate laudantium ex dignissimos enim amet.', 'https://via.placeholder.com/640x480.png/005544?text=deleniti', 'https://fay.com/unde-commodi-et-modi-dolore-molestiae.html', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(14, 'Ipsa aut velit accusamus suscipit cum at ipsam aliquam.', 'Eos maiores voluptatibus incidunt.', 'Eligendi excepturi at cumque minus inventore. Qui ratione odit consequuntur aliquid quidem voluptatem. Deserunt quia voluptatem dolores sed. Fugiat optio corrupti numquam omnis.', 'https://via.placeholder.com/640x480.png/00aa77?text=dicta', 'http://www.okuneva.info/', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(15, 'Hic consequatur tempora et aliquid cupiditate corporis repellat.', 'Eius est repudiandae est voluptatibus non aut saepe.', 'Aut quidem fugiat modi dolores voluptatibus sed. Ut qui molestiae fugiat. Illo adipisci eum delectus qui sint. Iure hic a sed.', 'https://via.placeholder.com/640x480.png/0011cc?text=consequatur', 'https://schaefer.com/similique-unde-ipsam-eaque-eius-velit-officiis-at-dolorum.html', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(16, 'Dolor vitae autem architecto velit iure voluptatibus.', 'Aut soluta consectetur aut quidem.', 'Sequi est cupiditate praesentium maiores. Temporibus quisquam laudantium dignissimos dolore facere eveniet laudantium. Quis possimus sit praesentium quam. Officiis illum ea et dolores odit.', 'https://via.placeholder.com/640x480.png/002299?text=quo', 'http://batz.net/ab-voluptatem-ratione-nulla-quos-quo', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(17, 'Sit est sapiente reiciendis harum asperiores aut.', 'Magnam maxime mollitia doloribus eum.', 'Sint ab fuga dolores porro exercitationem porro explicabo. Sunt accusamus nobis sit dolor. Est cupiditate incidunt aut. Enim sed laboriosam quia est ut pariatur quae.', 'https://via.placeholder.com/640x480.png/008899?text=ut', 'http://langworth.biz/', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(18, 'Debitis distinctio qui maiores tempore.', 'Qui dolorem minus distinctio.', 'Quia enim velit est omnis iure mollitia. Aliquam nihil rem doloremque deleniti. Eum unde quod quod est corporis.', 'https://via.placeholder.com/640x480.png/005500?text=exercitationem', 'http://gerhold.com/qui-laborum-at-architecto-quo-labore-velit.html', '2024-07-28 06:05:50', '2024-07-28 06:05:50', NULL),
(19, 'Aut qui ut et quia doloremque.', 'Harum quam cum qui itaque natus.', 'Aut eos dolorum qui et blanditiis. Natus eligendi fuga recusandae vero blanditiis ea. Veritatis eum qui ut.', 'https://via.placeholder.com/640x480.png/0044ee?text=in', 'https://gottlieb.com/quibusdam-porro-laudantium-ut-nulla-ea-voluptatem-necessitatibus-nisi.html', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(20, 'Iste tempora voluptatem id sint.', 'Dignissimos facere voluptatem sapiente distinctio voluptatum incidunt et itaque.', 'Voluptas velit accusamus qui architecto et vitae qui. Repellendus eos quam laborum autem et nobis. Officia quo quia quia dolore nostrum.', 'https://via.placeholder.com/640x480.png/0033ee?text=eveniet', 'http://www.harris.com/animi-quo-et-sed-doloribus-tempora', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(21, 'Ex aut aut vitae amet sed et pariatur mollitia.', 'Vel eius delectus itaque tenetur qui necessitatibus quia id.', 'Ab excepturi aspernatur iusto dolores. At itaque sed ut cum molestiae sint. Et nesciunt maxime eligendi harum sed inventore. Quis itaque ab fuga.', 'https://via.placeholder.com/640x480.png/004400?text=iste', 'https://bernhard.com/ut-doloremque-deleniti-aperiam-id-adipisci-consectetur-adipisci.html', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(22, 'Iure velit facere dicta sint.', 'Et fugiat beatae fuga vel est.', 'Sint nobis quia perferendis. Ut non sapiente quibusdam eveniet fugiat nisi. Nisi reiciendis quis rerum numquam eius.', 'https://via.placeholder.com/640x480.png/003388?text=nesciunt', 'http://stark.biz/', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(23, 'Neque rerum aut quia occaecati.', 'Animi voluptatem at numquam aut.', 'Nostrum velit aspernatur culpa consectetur. Dolor laborum error nostrum ut. Voluptas delectus perferendis repellendus eos. Ratione modi recusandae suscipit aut cupiditate.', 'https://via.placeholder.com/640x480.png/00ee88?text=quia', 'http://www.glover.com/inventore-quae-laboriosam-maiores-inventore-magni.html', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(24, 'Molestias incidunt a consectetur ut.', 'Illum fugit consequatur facere consequatur.', 'Voluptatum asperiores id amet dolore. Adipisci eum sunt porro nihil repellat et voluptatem. Qui iste distinctio incidunt in sit sunt hic. Inventore repellendus repellendus qui earum numquam.', 'https://via.placeholder.com/640x480.png/009955?text=placeat', 'http://www.kutch.org/', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(25, 'Tempore veritatis itaque quae molestiae cum eveniet voluptate.', 'Illum enim asperiores nobis et error cum nihil.', 'Omnis enim ipsum voluptates qui beatae consequuntur incidunt quidem. Alias voluptatem autem dolorem quia. Ut in nobis magni minus aliquid ut minima dignissimos. Amet ea rerum possimus odit cupiditate molestias repellendus. Rerum quaerat maiores ipsam corrupti.', 'https://via.placeholder.com/640x480.png/00ff88?text=ut', 'http://mitchell.org/in-suscipit-vero-et-quidem', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(26, 'Possimus non magni similique nihil est repellendus.', 'Quae et dolor recusandae quidem temporibus et.', 'Dolor cupiditate qui aut deserunt. Fugit eaque quo dolores qui ut facilis. Dolor quo sint consequatur natus libero. Voluptates possimus tenetur aut.', 'https://via.placeholder.com/640x480.png/005511?text=cupiditate', 'http://www.johnson.info/minus-id-suscipit-delectus', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(27, 'Expedita autem recusandae qui ratione excepturi amet qui non.', 'Consequatur facere cumque ipsum sed nisi aspernatur.', 'Nesciunt qui quam repudiandae iste odio. Sunt distinctio necessitatibus aut corporis enim odio. Est fugiat adipisci enim. Voluptatem id rem perspiciatis nihil quia in quidem incidunt. Quod facilis ducimus cupiditate voluptatum similique porro.', 'https://via.placeholder.com/640x480.png/0011dd?text=voluptatem', 'http://www.boyle.com/', '2024-07-28 06:06:55', '2024-07-28 06:06:55', NULL),
(28, 'Aspernatur id ut rem eum molestias reiciendis quia.', 'Ipsam deleniti et praesentium facilis.', 'Aspernatur sunt est illo voluptatem inventore. Delectus suscipit aut dolorum velit eveniet error dolores. Et dolore voluptas est eaque ea.', 'https://via.placeholder.com/640x480.png/00aacc?text=ut', 'http://rau.org/dolor-quasi-suscipit-aut-et-quis.html', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(29, 'In eaque qui autem delectus.', 'Omnis rerum aspernatur sed.', 'Iusto sed animi quas cumque pariatur repellendus iusto unde. Reiciendis mollitia necessitatibus veritatis dolor. Voluptatibus ut ipsum velit aut. Occaecati quam maxime illum officiis doloribus minima.', 'https://via.placeholder.com/640x480.png/00dd77?text=harum', 'http://www.ankunding.biz/qui-quae-reiciendis-expedita-dicta-sed.html', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(30, 'Consequatur molestiae ut voluptatum.', 'Dolores quo maiores sit.', 'Laboriosam at temporibus quas perspiciatis. Sit id maxime quia voluptas corporis.', 'https://via.placeholder.com/640x480.png/00bb11?text=pariatur', 'http://www.daugherty.com/quo-at-ut-consequatur-optio-et', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(31, 'Voluptas quas consequatur autem voluptates maiores sit et.', 'Corrupti odit aperiam atque.', 'Similique amet neque autem rem voluptatem placeat. Accusamus rerum laboriosam molestiae reiciendis voluptatem vel aut voluptates.', 'https://via.placeholder.com/640x480.png/00ccaa?text=tenetur', 'http://www.johnston.biz/', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(32, 'Necessitatibus qui voluptate consequatur est accusamus.', 'Omnis qui autem repellat modi quam.', 'Accusantium dolores qui omnis a dolores. Perferendis hic vel similique deserunt. Nihil laboriosam quo laboriosam ratione error.', 'https://via.placeholder.com/640x480.png/007733?text=veniam', 'http://haley.org/', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(33, 'Aliquam dignissimos maiores laboriosam.', 'Rerum libero omnis voluptate.', 'Quia dignissimos ea corporis maxime. Pariatur nihil odio explicabo est dolorum ratione. Assumenda id est rerum consequatur consequatur amet beatae.', 'https://via.placeholder.com/640x480.png/00dd33?text=est', 'https://considine.com/numquam-error-voluptate-nostrum-quae-nemo.html', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(34, 'Itaque quia et quis est voluptatem est harum molestiae.', 'Quaerat nihil velit totam dignissimos architecto facilis.', 'Saepe vitae necessitatibus officiis et similique voluptatem illum. Inventore voluptatum et rerum illo. Recusandae officiis quo laudantium et nihil ratione accusamus. Voluptates excepturi placeat voluptatem impedit.', 'https://via.placeholder.com/640x480.png/00cc11?text=pariatur', 'http://paucek.biz/aspernatur-fuga-error-ut-quasi-nulla-cupiditate.html', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(35, 'In qui molestias provident.', 'Quam quibusdam aut id iusto rerum ut ipsa est.', 'Ut dignissimos aperiam exercitationem cupiditate quia amet. Iusto quia ad animi rerum. Voluptatem cupiditate quis neque vel.', 'https://via.placeholder.com/640x480.png/00eedd?text=fuga', 'http://www.runte.biz/et-ipsam-tenetur-nihil-voluptatem-veniam-et-libero', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(36, 'Ut quasi alias quis qui molestiae.', 'Velit quia saepe dolorem eaque eius ea.', 'Dolores quaerat dolorem eligendi dolore. Quaerat fugit libero soluta aut nesciunt soluta nihil quas.', 'https://via.placeholder.com/640x480.png/007766?text=libero', 'http://hegmann.biz/natus-cupiditate-reprehenderit-reprehenderit-qui-quo-earum-et', '2024-07-28 08:49:13', '2024-07-28 08:49:13', NULL),
(37, 'Sit repellendus ratione qui voluptate rerum non.', 'Et ducimus ut provident laborum nihil odio.', 'Numquam quibusdam nam aliquam consequatur excepturi unde perferendis. Voluptate ad est et labore repellendus sint ut. Accusamus voluptatibus quia laudantium aspernatur.', 'https://via.placeholder.com/640x480.png/001133?text=ab', 'http://herman.com/ut-sunt-facere-deserunt-est.html', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(38, 'Et accusamus et adipisci.', 'Maxime cum dicta rerum exercitationem recusandae.', 'Sequi qui tempora commodi quia veritatis deleniti autem. Beatae eligendi delectus ipsum. Repudiandae vitae suscipit explicabo distinctio saepe quia. Aliquam quisquam voluptatem maiores excepturi pariatur. Consequuntur sit rerum ab nulla perspiciatis quaerat.', 'https://via.placeholder.com/640x480.png/008899?text=perferendis', 'https://dickens.com/officia-dolore-similique-error-quam-voluptatem-illo-voluptatem.html', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(39, 'Aliquam dolor ad magni recusandae beatae.', 'Nostrum ipsum aliquam quam culpa quibusdam delectus autem.', 'Quis provident eaque amet sit voluptatum. Tempore illum et eius dolores ut.', 'https://via.placeholder.com/640x480.png/000011?text=ex', 'https://www.pfannerstill.info/et-omnis-nihil-ut-placeat', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(40, 'Velit atque cupiditate consequuntur nihil.', 'Aliquid rem ipsa in non sit eligendi corrupti.', 'Tenetur ut et repudiandae consequatur quidem. Aliquam repudiandae ea ex consequatur ut tempora nam recusandae. Provident excepturi explicabo nobis et eius quos. Magnam et eos est est sequi quam aut dolores.', 'https://via.placeholder.com/640x480.png/0033ee?text=cumque', 'http://www.rosenbaum.com/', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(41, 'Perferendis dolor et in fugiat totam inventore.', 'Ut facilis aliquid veritatis eum sint eligendi dignissimos.', 'Corrupti hic quia quasi occaecati blanditiis doloremque. Incidunt a nesciunt molestiae animi eligendi ut sed laboriosam.', 'https://via.placeholder.com/640x480.png/002266?text=ex', 'http://dicki.com/corrupti-sit-saepe-dolorem-veritatis', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(42, 'Aliquam laboriosam voluptatum qui harum ullam nesciunt.', 'Velit ad quo ducimus nisi expedita voluptatibus.', 'Esse earum fugit cumque impedit eos. Expedita nobis cumque velit perspiciatis illo. Doloremque non consequatur atque doloremque nemo.', 'https://via.placeholder.com/640x480.png/00ffff?text=provident', 'https://bednar.com/doloribus-autem-inventore-sunt-doloribus.html', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(43, 'Molestias nobis aut quidem voluptas molestiae molestias voluptatem.', 'Consequatur dolores veritatis perferendis vel.', 'Aspernatur quis tenetur mollitia rerum autem. Enim aut rerum ex et. Impedit id ut dolorum quos magni. Est sit enim in ut nostrum et.', 'https://via.placeholder.com/640x480.png/007777?text=corporis', 'http://www.sawayn.com/quidem-totam-expedita-nihil', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(44, 'Quis voluptates officia neque et.', 'Officia minus sed aut.', 'Voluptas eius cum dolor commodi. Est quisquam odit et. Labore fugiat amet asperiores dolorem maxime illo.', 'https://via.placeholder.com/640x480.png/00cc55?text=id', 'http://parker.biz/', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(45, 'Eos et fugit natus voluptas vitae.', 'Minus voluptatum molestiae voluptate eligendi ut non sunt.', 'Id rerum voluptatem eaque. Nemo laudantium ipsam odio est porro voluptas perspiciatis ea. Qui delectus voluptatem rerum et voluptas sit.', 'https://via.placeholder.com/640x480.png/00ccff?text=debitis', 'http://gusikowski.com/', '2024-07-28 08:49:38', '2024-07-28 08:49:38', NULL),
(46, 'Similique ut omnis et itaque.', 'Exercitationem quidem odit magnam culpa ipsa magni.', 'Quidem expedita enim eius dignissimos voluptas. Vitae et sint quaerat autem. Eos beatae ex odit possimus.', 'https://via.placeholder.com/640x480.png/0088dd?text=harum', 'http://wilkinson.com/labore-sit-ratione-doloribus-veritatis-odit.html', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(47, 'Facere error itaque dicta.', 'Commodi quos quia reiciendis pariatur quasi quis ea vel.', 'Soluta nobis consequatur harum necessitatibus dolor consequatur aut. Praesentium facilis quos qui. Vitae sit quisquam eligendi ex beatae repudiandae doloremque. Ab qui necessitatibus doloremque esse quod illum. Voluptatem molestias eveniet ea placeat.', 'https://via.placeholder.com/640x480.png/002211?text=alias', 'http://friesen.com/est-hic-accusantium-nihil-quia', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(48, 'In qui nihil error deserunt.', 'Maiores libero iste inventore et nostrum.', 'Sit et aut aut ab quia aut corrupti. Expedita qui aut sed a repellendus. Necessitatibus harum distinctio voluptatem laboriosam laboriosam illo quasi. Inventore blanditiis sed ullam eius sit quam omnis odit.', 'https://via.placeholder.com/640x480.png/004477?text=saepe', 'http://www.romaguera.com/impedit-quia-sunt-sit-accusamus-provident.html', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(49, 'Inventore reiciendis sequi qui.', 'Animi omnis dignissimos nulla in.', 'Iste omnis et qui omnis minima qui repellat quidem. In sed voluptatem aspernatur quam. Nihil dolores optio delectus omnis deleniti. Quae dicta doloribus tempore vitae iure.', 'https://via.placeholder.com/640x480.png/00dd44?text=delectus', 'http://monahan.com/', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(50, 'Qui ut molestias dolorem deserunt ut recusandae id.', 'Velit laboriosam beatae dolor laboriosam voluptatem rem.', 'Nobis dolor non quisquam repudiandae quis. Quis debitis sed sit voluptatem voluptatem. Est veritatis accusamus adipisci placeat rerum. Voluptas debitis similique enim qui. Nisi aliquid rerum quae officia molestiae tempora iure nemo.', 'https://via.placeholder.com/640x480.png/00cc44?text=maiores', 'http://botsford.com/', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(51, 'Excepturi quia minus quia magnam nam dicta.', 'Sit earum dolor quo corrupti minus nisi nulla.', 'In velit praesentium adipisci. At cum soluta non tempore. Distinctio deleniti omnis ex tempora. Aut esse quis sapiente omnis sed.', 'https://via.placeholder.com/640x480.png/00bb88?text=officia', 'http://www.schiller.com/blanditiis-deleniti-quia-reiciendis-consequatur-voluptate', '2024-07-28 08:51:23', '2024-07-28 08:51:23', NULL),
(52, 'Maxime quia ut non consequuntur.', 'Et numquam quidem quaerat quasi.', 'Ut qui ipsa architecto. Officia nesciunt alias veniam nisi et temporibus. Praesentium aut quae iure similique eos laudantium.', 'https://via.placeholder.com/640x480.png/00aadd?text=voluptate', 'http://mckenzie.com/suscipit-impedit-fugit-doloremque-quasi-eveniet-qui-rerum', '2024-07-28 08:51:23', '2024-07-28 10:52:30', '2024-07-28 10:52:30'),
(53, 'Incidunt qui earum soluta.', 'Repellat est debitis provident molestias.', 'Nisi quas incidunt quis rerum aut voluptatum quam. Saepe libero maxime repellat deleniti voluptates. Et rerum omnis quia officia.', 'https://via.placeholder.com/640x480.png/006688?text=enim', 'http://www.gleichner.info/et-aut-suscipit-ut-provident-accusantium', '2024-07-28 08:51:23', '2024-07-28 10:46:28', '2024-07-28 10:46:28'),
(54, 'Doloribus neque veritatis cupiditate veritatis.', 'Rerum aut consequatur sunt sed perspiciatis.', 'Porro ut cum animi eaque modi ea eveniet. Sed deleniti voluptate et voluptatem et qui quaerat. Quos aut magni odio assumenda quod. Culpa neque dolor illum in dignissimos reiciendis vel.', 'https://via.placeholder.com/640x480.png/0044cc?text=atque', 'https://www.bahringer.net/libero-aperiam-hic-sed-maiores-architecto-voluptas', '2024-07-28 08:51:23', '2024-07-28 10:46:05', '2024-07-28 10:46:05'),
(55, 'Nam qui incidunt voluptatem ducimus ullam provident eos.', 'Occaecati nobis autem neque odit cumque.', 'Similique quis magni ut sint ut. Aut rerum aperiam architecto sapiente in.', 'https://via.placeholder.com/640x480.png/009999?text=est', 'http://romaguera.biz/expedita-quisquam-sed-aut-molestias-nam-eum', '2024-07-28 09:05:46', '2024-07-28 10:46:02', '2024-07-28 10:46:02'),
(56, 'Neque voluptates cum mollitia sunt.', 'Nostrum minima sint eos eos.', 'Magnam qui earum doloremque culpa. Provident ut voluptatem voluptas non non aspernatur nulla corporis. Architecto numquam autem officiis et earum. Ea at repellendus aliquam velit laudantium ut.', 'https://via.placeholder.com/640x480.png/005566?text=accusantium', 'https://www.wilkinson.info/quia-possimus-id-est-omnis', '2024-07-28 09:05:46', '2024-07-28 10:45:58', '2024-07-28 10:45:58'),
(57, 'Unde id molestiae nemo quae quo ut.', 'Enim velit sit animi aut eaque alias architecto.', 'Minus voluptatum quas illo magni rerum omnis corrupti. Aut esse ex tempore nemo nulla. Quia facilis enim impedit perferendis.', 'https://via.placeholder.com/640x480.png/0099ee?text=quia', 'http://www.smith.org/', '2024-07-28 09:05:46', '2024-07-28 10:45:52', '2024-07-28 10:45:52'),
(58, 'Magni nam tempore porro voluptas quidem earum aliquid.', 'Eaque debitis est architecto quas eaque.', 'Voluptates quisquam et iste dolorem. Voluptatum minima iusto sunt. Labore quod optio earum nostrum. Expedita nobis illum cum ut autem atque ipsam.', 'https://via.placeholder.com/640x480.png/00ff22?text=impedit', 'https://green.info/ipsum-iste-voluptas-error-id-ut-dolores-et.html', '2024-07-28 09:05:46', '2024-07-28 10:36:43', '2024-07-28 10:36:43'),
(59, 'Natus enim officiis laudantium qui necessitatibus.', 'Debitis nihil laboriosam quia corrupti.', 'Cumque consequatur aut ipsam in qui. Voluptatem ipsum hic ut voluptas. Atque qui eligendi eum voluptas et enim quidem id. Unde velit itaque pariatur quos.', 'https://via.placeholder.com/640x480.png/006600?text=quaerat', 'http://champlin.biz/nihil-fugiat-officia-ullam', '2024-07-28 09:05:46', '2024-07-28 10:36:06', '2024-07-28 10:36:06'),
(60, 'Ab id voluptatem quidem.', 'Et eum rerum quasi est asperiores et tenetur.', 'Voluptas et consequatur voluptatibus hic. Voluptate error omnis dicta. Debitis velit voluptatem sapiente magnam ullam veniam neque.', 'https://via.placeholder.com/640x480.png/0077ee?text=dicta', 'https://www.friesen.com/dolores-sint-voluptatem-dolorum-sint-accusamus-quia-quo', '2024-07-28 09:05:46', '2024-07-28 09:45:37', '2024-07-28 09:45:37'),
(61, 'Provident voluptas rerum et sed.', 'Enim quae voluptas neque voluptates voluptas quas doloremque beatae.', 'Autem ratione saepe laboriosam vitae veritatis voluptatem vero. Ut dolor libero ex. Aperiam unde molestiae sit sit in sed.', 'https://via.placeholder.com/640x480.png/0011dd?text=deserunt', 'https://pouros.biz/dolor-repellat-et-eligendi-qui-dignissimos-repellendus-dolorem.html', '2024-07-28 09:05:46', '2024-07-28 09:35:41', '2024-07-28 09:35:41'),
(62, 'Dignissimos quia velit quisquam ut reiciendis.', 'Enim harum omnis assumenda distinctio.', 'Officia fugit voluptas placeat mollitia. Officia dicta expedita minus laudantium. Facere aut repudiandae dolorem aut minima est consequatur laboriosam. Veritatis accusantium sit autem non placeat ut.', 'https://via.placeholder.com/640x480.png/00ff66?text=reprehenderit', 'http://www.bashirian.com/impedit-ut-facere-est-cum-optio.html', '2024-07-28 09:05:46', '2024-07-28 09:35:30', '2024-07-28 09:35:30'),
(63, 'Earum debitis rerum quia molestiae ipsa.', 'Enim nihil culpa ab et totam.', 'Iure sit provident nostrum tempore recusandae praesentium pariatur. Aperiam rerum ratione eius quae et. Quod iusto qui quisquam et est temporibus hic ducimus. Ipsam ipsam aut tempore.', 'https://via.placeholder.com/640x480.png/0000cc?text=blanditiis', 'http://www.schneider.net/', '2024-07-28 09:05:46', '2024-07-28 09:35:24', '2024-07-28 09:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bM4cdbvtAc2PdiktC2FHB8uP1aEPcLHaKtPnuwtz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IkRkdkpXcmQ4TDJEYVk0eWt6TmRObVpJRnEyeG9DRXp0dzdFUHZKZnMiO30=', 1722174137);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/09/2022 às 20:58
-- Versão do servidor: 10.4.24-MariaDB
-- Versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atividadefinal`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `cnpj`, `created_at`, `updated_at`) VALUES
(1, 'Collier-Dach', '210978471', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(2, 'West-Gulgowski', '279553882', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(3, 'Lesch-Mills', '436268072', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(4, 'Kuhlman-Abshire', '279545575', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(5, 'Orn-Block', '761397871', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(6, 'Ondricka-Bode', '905689545', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(7, 'Emard Group', '46918921', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(8, 'Crona Group', '80068775', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(9, 'Paucek, Konopelski and Cronin', '216001400', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(10, 'Zemlak, Zboncak and Jacobi', '527332975', '2022-09-30 20:00:44', '2022-09-30 20:00:44'),
(12, 'Elian', '12345678901234', '2022-09-30 21:17:37', '2022-09-30 21:17:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_30_004134_create_pessoas_table', 1),
(6, '2022_09_30_010458_create_telefones_table', 1),
(7, '2022_09_30_013427_create_empresas_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `cpf`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Herbert', '16719789711', 'dibbert.rafaela@hotmail.com', '2022-09-30 20:00:42', '2022-09-30 20:00:42'),
(2, 'Waldo', '18965803004', 'colby.abshire@gmail.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(3, 'Bette', '16583296613', 'oschamberger@mertz.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(4, 'Shanelle', '18005685800', 'metz.mikel@cormier.biz', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(5, 'Madaline', '15042797286', 'armstrong.erwin@daugherty.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(6, 'Alphonso', '10832832265', 'hilbert49@hotmail.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(7, 'Loraine', '16505717374', 'brigitte.ledner@herman.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(8, 'Eliseo', '12198029285', 'marcellus00@hotmail.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(9, 'Wade', '16203712108', 'purdy.ryann@hotmail.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(10, 'Oleta', '17750415057', 'gladyce.dubuque@hamill.com', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(12, 'Eliah', '00010020030', 'elianrodrigues@gmail.com', '2022-09-30 20:26:39', '2022-09-30 20:26:39'),
(14, 'Elian', '12345678901', 'elianrodrigues@gmail.com', '2022-09-30 21:14:14', '2022-09-30 21:14:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `telefones`
--

CREATE TABLE `telefones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pessoa_id` bigint(20) UNSIGNED NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `telefones`
--

INSERT INTO `telefones` (`id`, `pessoa_id`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, '+13318859576', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(2, 1, '+13515631750', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(3, 2, '+14799371827', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(4, 2, '+18709314210', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(5, 3, '+15866281036', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(6, 3, '+16572417408', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(7, 4, '+18658450134', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(8, 4, '+19527305186', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(9, 5, '+18706776585', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(10, 5, '+16093865210', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(11, 6, '+15419769823', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(12, 6, '+15732581557', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(13, 7, '+14402614383', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(14, 7, '+19385630133', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(15, 8, '+18648980600', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(16, 8, '+19568410885', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(17, 9, '+12798503289', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(18, 9, '+15625810033', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(19, 10, '+12487085345', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(20, 10, '+15865033376', '2022-09-30 20:00:43', '2022-09-30 20:00:43'),
(22, 10, '00010020030', '2022-09-30 20:33:45', '2022-09-30 20:33:45'),
(24, 1, '99199009900', '2022-09-30 21:32:18', '2022-09-30 21:32:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2022-09-30 20:00:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XblZCfq0ag', '2022-09-30 20:00:44', '2022-09-30 20:00:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `telefones`
--
ALTER TABLE `telefones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `telefones_pessoa_id_foreign` (`pessoa_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `telefones`
--
ALTER TABLE `telefones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `telefones`
--
ALTER TABLE `telefones`
  ADD CONSTRAINT `telefones_pessoa_id_foreign` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

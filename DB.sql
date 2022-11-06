--
-- データベース: `restaurant_order`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `hall_order_status`
--

CREATE TABLE `hall_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NULL NULL,
  `seating_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `prepared` varchar(255) NOT NULL,
  `privided` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `hall_order_status`
--

INSERT INTO `hall_order_status` (`id`, `restaurant_id`, `seating_id`, `menu_id`, `prepared`, `privided`, `created_at`, `update_at`) VALUES
(1, 1, 5, 1, '未調理', '未提供', '2022-11-01 10:00:00', '2022-11-01 10:00:00'),
(2, 1, 5, 2, '調理済', '未提供', '2022-11-01 10:00:30', '2022-11-01 10:05:00'),
(3, 1, 5, 3, '未調理', '未提供', '2022-11-01 10:01:00', '2022-11-01 10:01:00'),
(4, 1, 5, 4, '調理済', '未提供', '2022-11-01 10:01:30', '2022-11-01 10:06:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `kitchen_order_status`
--

CREATE TABLE `kitchen_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NULL NULL,
  `seating_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `prepared` varchar(255) NOT NULL,
  `privided` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `kitchen_order_status`
--

INSERT INTO `kitchen_order_status` (`id`, `restaurant_id`, `seating_id`, `menu_id`, `prepared`, `privided`, `created_at`, `update_at`) VALUES
(1, 1, 5, 1, '未調理', '未提供', '2022-11-01 10:00:00', '2022-11-01 10:00:00'),
(3, 1, 5, 3, '未調理', '未提供', '2022-11-01 10:01:00', '2022-11-01 10:01:00');


-- --------------------------------------------------------

--
-- テーブルの構造 `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) NULL NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `manager`
--

INSERT INTO `manager` (`id`, `restaurant_name`, `name`, `password`, `created_at`, `update_at`) VALUES
(1, 'レストラン', 'マネージャー', 'manager', '2022-01-01 10:05:00', '2022-01-01 10:05:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) NULL NULL,
  `image` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `menu`
--

INSERT INTO `menu` (`id`, `restaurant_name`, `image`, `menu_name`, `price`, `detail`, `created_at`, `update_at`) VALUES
(1, 'レストラン', 'storage/image/foodiesfeed.com_cheese-burger-with-fried-onion-on-a-tray.jpg', 'チーズバーガー', '500', 'チーズ好きにはたまらない一品', '2022-01-02 11:00:00', '2022-01-02 11:00:00'),
(2, 'レストラン', 'storage/image/foodiesfeed.com_pork-ribs-with-knife.jpg', 'スペアリブ', '800', 'かぶりつきたいこの肉', '2022-01-02 11:05:00', '2022-01-02 11:05:00'),
(3, 'レストラン', 'storage/image/foodiesfeed.com_tacos-with-pulled-pork-fresh-vegetables-and-cream.jpg', 'タコス', '600', '当店オリジナルソースが決め手', '2022-01-02 11:10:00', '2022-01-02 11:10:00'),
(4, 'レストラン', 'storage/image/foodiesfeed.com_neapolitan-pizza-margherita.jpg', 'マルゲリータ', '700', '王道ピザ', '2022-01-02 11:15:00', '2022-01-02 11:15:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NULL NULL,
  `seating_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `prepared` varchar(255) NOT NULL,
  `privided` varchar(255) NOT NULL,
  `day` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `order_history`
--

INSERT INTO `hall_order_status` (`id`, `restaurant_id`, `seating_id`, `menu_id`, `prepared`, `privided`, `day`, `created_at`, `update_at`) VALUES
(1, 1, 1, 1, '調理済', '提供済', '2022-01-10 00:00:00', '2022-01-10 10:00:00', '2022-01-10 10:05:00'),
(2, 1, 2, 2, '調理済', '提供済', '2022-01-11 00:00:00', '2022-01-11 10:00:00', '2022-01-11 10:05:00'),
(3, 1, 3, 3, '調理済', '提供済', '2022-02-01 00:00:00', '2022-02-01 10:01:00', '2022-02-01 10:06:00'),
(4, 1, 4, 4, '調理済', '提供済', '2022-03-01 00:00:00', '2022-03-01 10:01:30', '2022-03-01 10:06:00'),
(5, 1, 5, 1, '未調理', '未提供', '2022-11-01 00:00:00', '2022-11-01 10:00:00', '2022-11-01 10:00:00'),
(6, 1, 5, 2, '調理済', '未提供', '2022-11-01 00:00:00', '2022-11-01 10:00:30', '2022-11-01 10:05:00'),
(7, 1, 5, 3, '未調理', '未提供', '2022-11-01 00:00:00', '2022-11-01 10:01:00', '2022-11-01 10:01:00'),
(8, 1, 5, 4, '調理済', '未提供', '2022-11-01 00:00:00', '2022-11-01 10:01:30', '2022-11-01 10:06:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) NULL NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `restaurant`
--

INSERT INTO `restaurant` (`id`, `restaurant_name`, `password`, `created_at`) VALUES
(1, 'レストラン', 'restaurant', '2022-01-01 10:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `seating`
--

CREATE TABLE `seating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NULL NULL,
  `seating_number` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `seating`
--

INSERT INTO `seating` (`id`, `restaurant_id`, `seating_number`, `created_at`) VALUES
(1, 1, 1, '2022-01-10 09:55:00'),
(2, 1, 1, '2022-01-11 09:55:00'),
(3, 1, 1, '2022-02-01 09:55:00'),
(4, 1, 1, '2022-03-01 09:55:00'),
(5, 1, 1, '2022-11-01 09:55:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `seat_order_history`
--

CREATE TABLE `seat_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NULL NULL,
  `seating_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `seat_order_history`
--

INSERT INTO `seating` (`id`, `restaurant_id`, `seating_id`, `menu_id`, `created_at`) VALUES
(1, 1, 1, 1, '2022-01-10 10:00:00'),
(2, 1, 2, 2, '2022-01-11 10:00:00'),
(3, 1, 3, 3, '2022-02-01 10:01:00'),
(4, 1, 4, 4, '2022-03-01 10:01:30'),
(5, 1, 5, 1, '2022-11-01 10:00:00'),
(6, 1, 5, 2, '2022-11-01 10:00:30'),
(7, 1, 5, 3, '2022-11-01 10:01:00'),
(8, 1, 5, 4, '2022-11-01 10:01:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) NULL NULL,
  `name_or_position` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `staff`
--

INSERT INTO `staff` (`id`, `restaurant_name`, `name_or_position`, `password`, `created_at`, `update_at`) VALUES
(1, 'レストラン', 'マネージャー', 'manager', '2022-01-01 10:05:00', '2022-01-01 10:05:00'),
(1, 'レストラン', 'ホール', 'hall', '2022-01-01 10:10:00', '2022-01-01 10:10:00'),
(1, 'レストラン', 'キッチン', 'kitchen', '2022-01-01 10:15:00', '2022-01-01 10:15:00');

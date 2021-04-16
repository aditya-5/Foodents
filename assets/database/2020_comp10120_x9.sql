-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2021 at 04:48 PM
-- Server version: 5.7.32
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2020_comp10120_x9`
--
CREATE DATABASE IF NOT EXISTS `2020_comp10120_x9` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `2020_comp10120_x9`;

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIES`
--

CREATE TABLE `CATEGORIES` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `COMMENTS`
--

CREATE TABLE `COMMENTS` (
  `comment_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `COMMENTS`
--

INSERT INTO `COMMENTS` (`comment_id`, `recipe_id`, `user_id`, `text`, `date`) VALUES
(1, 619, 1, 'Comment test by admin', '2021-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `INGREDIENTS`
--

CREATE TABLE `INGREDIENTS` (
  `ingredient_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `INGREDIENTS`
--

INSERT INTO `INGREDIENTS` (`ingredient_id`, `category_id`, `name`) VALUES
(4, NULL, 'Butter'),
(5, NULL, 'Butter oil'),
(6, NULL, 'Cheese'),
(7, NULL, 'Cheese spread'),
(8, NULL, 'Cream'),
(9, NULL, 'Eggnog'),
(10, NULL, 'Cream substitute'),
(11, NULL, 'Dessert topping'),
(12, NULL, 'Sour cream'),
(13, NULL, 'Milk'),
(14, NULL, 'Whey'),
(15, NULL, 'Yogurt'),
(16, NULL, 'Egg'),
(17, NULL, 'Cheese sauce'),
(18, NULL, 'Parmesan cheese topping'),
(19, NULL, 'Cheese product'),
(20, NULL, 'Protein supplement'),
(21, NULL, 'Dulce de Leche'),
(22, NULL, 'Egg substitute'),
(23, NULL, 'Ice cream'),
(24, NULL, 'Ice cream cone'),
(25, NULL, 'Fat free ice cream'),
(26, NULL, 'Nutritional supplement for people with diabetes'),
(27, NULL, 'Ice cream bar'),
(28, NULL, 'Kefir'),
(29, NULL, 'Light ice cream'),
(30, NULL, 'Spices'),
(31, NULL, 'Basil'),
(32, NULL, 'Mustard'),
(33, NULL, 'Salt'),
(34, NULL, 'Vinegar'),
(35, NULL, 'Vanilla extract'),
(36, NULL, 'Capers'),
(37, NULL, 'Horseradish'),
(38, NULL, 'Clif Z bar'),
(39, NULL, 'Babyfood'),
(40, NULL, 'Zwieback'),
(41, NULL, 'Infant formula'),
(42, NULL, 'Child formula'),
(43, NULL, 'Infant Formula'),
(44, NULL, 'Toddler formula'),
(45, NULL, 'Fat'),
(46, NULL, 'Lard'),
(47, NULL, 'Salad dressing'),
(48, NULL, 'Sandwich spread'),
(49, NULL, 'Oil'),
(50, NULL, 'Margarine,spread'),
(51, NULL, 'Shortening industrial'),
(52, NULL, 'Animal fat'),
(53, NULL, 'Margarine'),
(54, NULL, 'Margarine-like'),
(55, NULL, 'Shortening'),
(56, NULL, 'Dressing'),
(57, NULL, 'Mayonnaise'),
(58, NULL, 'Chicken'),
(59, NULL, 'Duck'),
(60, NULL, 'Goose'),
(61, NULL, 'Turkey'),
(62, NULL, 'Chicken patty'),
(63, NULL, 'Ostrich'),
(64, NULL, 'Turkey from whole'),
(65, NULL, 'Soup'),
(66, NULL, 'CAMPBELL\' S '),
(67, NULL, ' Sauce '),
(68, NULL, ' Gravy '),
(69, NULL, ' Split pea soup '),
(70, NULL, ' Split pea with ham soup '),
(71, NULL, ' Fish broth '),
(72, NULL, ' Blood sausage '),
(73, NULL, ' Bologna '),
(74, NULL, ' Bratwurst '),
(75, NULL, ' Braunschweiger (a liver sausage) '),
(76, NULL, ' Frankfurter '),
(77, NULL, ' Ham '),
(78, NULL, ' Ham salad spread '),
(79, NULL, ' Headcheese '),
(80, NULL, ' Knackwurst '),
(81, NULL, ' Roast beef '),
(82, NULL, ' Mortadella '),
(83, NULL, ' Pate '),
(84, NULL, ' Pepperoni '),
(85, NULL, ' Pickle and pimiento loaf '),
(86, NULL, ' Pork sausage '),
(87, NULL, ' Poultry salad sandwich spread '),
(88, NULL, ' Salami '),
(89, NULL, ' Thuringer '),
(90, NULL, ' Turkey breast '),
(91, NULL, ' Sausage '),
(92, NULL, ' Luncheon meat '),
(93, NULL, ' Scrapple '),
(94, NULL, ' Chicken breast '),
(95, NULL, ' Kielbasa '),
(96, NULL, ' Bacon '),
(97, NULL, ' Cereals ready - to - eat '),
(98, NULL, ' Cereals '),
(99, NULL, ' Milk and cereal bar '),
(100, NULL, ' Rice and Wheat cereal bar '),
(101, NULL, ' Apples '),
(102, NULL, ' Apple juice '),
(103, NULL, ' Applesauce '),
(104, NULL, ' Apricots '),
(105, NULL, ' Apricot nectar '),
(106, NULL, ' Avocados '),
(107, NULL, ' Bananas '),
(108, NULL, ' Blackberries '),
(109, NULL, ' Blackberry juice '),
(110, NULL, ' Cherries '),
(111, NULL, ' Blueberries '),
(112, NULL, ' Breadfruit '),
(113, NULL, ' Carambola '),
(114, NULL, ' Cranberries '),
(115, NULL, ' Cranberry sauce '),
(116, NULL, ' Currants '),
(117, NULL, ' Dates '),
(118, NULL, ' Figs '),
(119, NULL, ' Fruit cocktail '),
(120, NULL, ' Grapefruit '),
(121, NULL, ' Grapefruit juice '),
(122, NULL, ' Grape juice '),
(123, NULL, ' Grapes '),
(124, NULL, ' Guavas '),
(125, NULL, ' Guava sauce '),
(126, NULL, ' Kiwifruit '),
(127, NULL, ' Kumquats '),
(128, NULL, ' Lemons '),
(129, NULL, ' Lemon juice '),
(130, NULL, ' Lemon juice from concentrate '),
(131, NULL, ' Lemon peel '),
(132, NULL, ' Limes '),
(133, NULL, ' Lime juice '),
(134, NULL, ' Litchis '),
(135, NULL, ' Mangos '),
(136, NULL, ' Mango '),
(137, NULL, ' Melons '),
(138, NULL, ' Nectarines '),
(139, NULL, ' Olives '),
(140, NULL, ' Oranges '),
(141, NULL, ' Orange juice '),
(142, NULL, ' Tangerines '),
(143, NULL, ' Tangerine juice '),
(144, NULL, ' Papayas '),
(145, NULL, ' Papaya nectar '),
(146, NULL, ' Passion - fruit '),
(147, NULL, ' Passion - fruit juice '),
(148, NULL, ' Peaches '),
(149, NULL, ' Peach nectar '),
(150, NULL, ' Pears '),
(151, NULL, ' Pear nectar '),
(152, NULL, ' Persimmons '),
(153, NULL, ' Pineapple '),
(154, NULL, ' Pineapple juice '),
(155, NULL, ' Plantains '),
(156, NULL, ' Plums '),
(157, NULL, ' Pomegranates '),
(158, NULL, ' Prune juice '),
(159, NULL, ' Raisins '),
(160, NULL, ' Raspberries '),
(161, NULL, ' Rhubarb '),
(162, NULL, ' Strawberries '),
(163, NULL, ' Tamarinds '),
(164, NULL, ' Watermelon '),
(165, NULL, ' Maraschino cherries '),
(166, NULL, ' Candied fruit '),
(167, NULL, ' Guanabana nectar '),
(168, NULL, ' Mango nectar '),
(169, NULL, ' Pomegranate juice '),
(170, NULL, ' Juice '),
(171, NULL, ' Orange Pineapple Juice Blend '),
(172, NULL, ' Fruit juice smoothie '),
(173, NULL, ' Guava nectar '),
(174, NULL, ' Cranberry juice blend '),
(175, NULL, ' Pork '),
(176, NULL, ' Canadian bacon '),
(177, NULL, ' Alfalfa seeds '),
(178, NULL, ' Artichokes '),
(179, NULL, ' Asparagus '),
(180, NULL, ' Balsam - pear (bitter gourd) '),
(181, NULL, ' Bamboo shoots '),
(182, NULL, ' Lima beans '),
(183, NULL, ' Mung beans '),
(184, NULL, ' Beans '),
(185, NULL, ' Beets '),
(186, NULL, ' Beet greens '),
(187, NULL, ' Broccoli '),
(188, NULL, ' Broccoli raab '),
(189, NULL, ' Brussels sprouts '),
(190, NULL, ' Burdock root '),
(191, NULL, ' Cabbage '),
(192, NULL, ' Carrots '),
(193, NULL, ' Cassava '),
(194, NULL, ' Cauliflower '),
(195, NULL, ' Celeriac '),
(196, NULL, ' Celery '),
(197, NULL, ' Chard '),
(198, NULL, ' Chayote '),
(199, NULL, ' Chives '),
(200, NULL, ' Collards '),
(201, NULL, ' Coriander (cilantro) leaves '),
(202, NULL, ' Corn '),
(203, NULL, ' Cowpeas (blackeyes) '),
(204, NULL, ' Cress '),
(205, NULL, ' Cucumber '),
(206, NULL, ' Dandelion greens '),
(207, NULL, ' Eggplant '),
(208, NULL, ' Edamame '),
(209, NULL, ' Escarole '),
(210, NULL, ' Garlic '),
(211, NULL, ' Ginger root '),
(212, NULL, ' Kale '),
(213, NULL, ' Kohlrabi '),
(214, NULL, ' Lambsquarters '),
(215, NULL, ' Leeks '),
(216, NULL, ' Lettuce '),
(217, NULL, ' Lotus root '),
(218, NULL, ' Mushrooms '),
(219, NULL, ' Mustard greens '),
(220, NULL, ' Okra '),
(221, NULL, ' Onions '),
(222, NULL, ' Onion rings '),
(223, NULL, ' Parsley '),
(224, NULL, ' Parsnips '),
(225, NULL, ' Peas '),
(226, NULL, ' Peppers '),
(227, NULL, ' Pokeberry shoots '),
(228, NULL, ' Potatoes '),
(229, NULL, ' Potato puffs '),
(230, NULL, ' Potato flour '),
(231, NULL, ' Pumpkin flowers '),
(232, NULL, ' Pumpkin '),
(233, NULL, ' Radishes '),
(234, NULL, ' Rutabagas '),
(235, NULL, ' Salsify '),
(236, NULL, ' Sauerkraut '),
(237, NULL, ' Seaweed '),
(238, NULL, ' Spinach '),
(239, NULL, ' Squash '),
(240, NULL, ' Sweet potato leaves '),
(241, NULL, ' Sweet potato '),
(242, NULL, ' Taro '),
(243, NULL, ' Taro leaves '),
(244, NULL, ' Tomatoes '),
(245, NULL, ' Tomato juice '),
(246, NULL, ' Tomato products '),
(247, NULL, ' Turnips '),
(248, NULL, ' Turnip greens '),
(249, NULL, ' Vegetable juice cocktail '),
(250, NULL, ' Vegetables '),
(251, NULL, ' Waterchestnuts '),
(252, NULL, ' Watercress '),
(253, NULL, ' Waxgourd '),
(254, NULL, ' Yam '),
(255, NULL, ' Yambean (jicama) '),
(256, NULL, ' Carrot juice '),
(257, NULL, ' Catsup '),
(258, NULL, ' Pickles '),
(259, NULL, ' Pimento '),
(260, NULL, ' Pickle relish '),
(261, NULL, ' Radicchio '),
(262, NULL, ' Tomatillos '),
(263, NULL, ' Fennel '),
(264, NULL, ' Arugula '),
(265, NULL, ' Nopales '),
(266, NULL, ' Grape leaves '),
(267, NULL, ' Pepper '),
(268, NULL, ' Seeds '),
(269, NULL, ' Nuts '),
(270, NULL, ' Beef '),
(271, NULL, ' Alcoholic beverage '),
(272, NULL, ' Beverages '),
(273, NULL, ' Carbonated beverage '),
(274, NULL, ' Cranberry juice cocktail '),
(275, NULL, ' Alcoholic beverages '),
(276, NULL, ' Lemonade '),
(277, NULL, ' Malt beverage '),
(278, NULL, ' Shake '),
(279, NULL, ' Strawberry - flavor beverage mix '),
(280, NULL, ' Water '),
(281, NULL, ' Fish '),
(282, NULL, ' Crustaceans '),
(283, NULL, ' Mollusks '),
(284, NULL, ' Broadbeans (fava beans) '),
(285, NULL, ' Chickpeas (garbanzo beans)'),
(286, NULL, ' Chili with beans '),
(287, NULL, ' Cowpeas '),
(288, NULL, ' Lentils '),
(289, NULL, ' Noodles '),
(290, NULL, ' Peanuts '),
(291, NULL, ' Peanut butter '),
(292, NULL, ' Peanut flour '),
(293, NULL, ' Refried beans '),
(294, NULL, ' Soybeans '),
(295, NULL, ' Miso '),
(296, NULL, ' Natto '),
(297, NULL, ' Soy flour '),
(298, NULL, ' Soy protein isolate '),
(299, NULL, ' Soy sauce made from soy and wheat (shoyu) '),
(300, NULL, ' Tofu '),
(301, NULL, ' Soymilk '),
(302, NULL, ' Veggie burgers or soyburgers '),
(303, NULL, ' Peanut spread '),
(304, NULL, ' Soymilk (all flavors) '),
(305, NULL, ' Lamb '),
(306, NULL, ' Veal '),
(307, NULL, ' Game meat '),
(308, NULL, ' Bagels '),
(309, NULL, ' Biscuits '),
(310, NULL, ' Bread '),
(311, NULL, ' Cake '),
(312, NULL, ' Cookies '),
(313, NULL, ' Puff pastry '),
(314, NULL, ' Crackers '),
(315, NULL, ' Cream puff shell '),
(316, NULL, ' Croissants '),
(317, NULL, ' Croutons '),
(318, NULL, ' Danish pastry '),
(319, NULL, ' Doughnuts '),
(320, NULL, ' Muffins '),
(321, NULL, ' Ice cream cones '),
(322, NULL, ' Pancakes plain '),
(323, NULL, ' Pancakes '),
(324, NULL, ' Pie '),
(325, NULL, ' Pie crust '),
(326, NULL, ' Phyllo dough '),
(327, NULL, ' Rolls '),
(328, NULL, ' Strudel '),
(329, NULL, ' Sweet rolls '),
(330, NULL, ' Taco shells '),
(331, NULL, ' Tortillas '),
(332, NULL, ' Leavening agents '),
(333, NULL, ' Tart '),
(334, NULL, ' Waffle '),
(335, NULL, ' Toaster Pastries '),
(336, NULL, ' Muffin '),
(337, NULL, ' Pie Crust '),
(338, NULL, ' Garlic bread '),
(339, NULL, ' Cinnamon buns '),
(340, NULL, ' Cream puff '),
(341, NULL, ' Focaccia '),
(342, NULL, 'Schiff Tiger\'s milk bar'),
(343, NULL, ' Candies '),
(344, NULL, ' Snacks '),
(345, NULL, ' Fruit syrup '),
(346, NULL, ' Syrup '),
(347, NULL, ' Baking chocolate '),
(348, NULL, ' Ice creams '),
(349, NULL, ' Sherbet '),
(350, NULL, ' Chocolate - flavored hazelnut spread '),
(351, NULL, ' Syrups '),
(352, NULL, ' Toppings '),
(353, NULL, ' Chewing gum '),
(354, NULL, ' Cocoa '),
(355, NULL, ' Gelatin desserts '),
(356, NULL, ' Gelatins '),
(357, NULL, ' Puddings '),
(358, NULL, ' Frostings '),
(359, NULL, ' Frozen novelties '),
(360, NULL, ' Frozen yogurts '),
(361, NULL, ' Fruit butters '),
(362, NULL, ' Honey '),
(363, NULL, ' Jams and preserves '),
(364, NULL, ' Jellies '),
(365, NULL, ' Marmalade '),
(366, NULL, ' Molasses '),
(367, NULL, ' Pie fillings '),
(368, NULL, ' Sugars '),
(369, NULL, ' Sweeteners '),
(370, NULL, ' Snack '),
(371, NULL, ' Cheese puffs and twists '),
(372, NULL, ' Potato chips '),
(373, NULL, ' Sweetener '),
(374, NULL, ' Jams '),
(375, NULL, ' Barley '),
(376, NULL, ' Buckwheat groats '),
(377, NULL, ' Buckwheat flour '),
(378, NULL, ' Bulgur '),
(379, NULL, ' Corn flour '),
(380, NULL, ' Cornmeal '),
(381, NULL, ' Cornstarch '),
(382, NULL, ' Couscous '),
(383, NULL, ' Hominy '),
(384, NULL, ' Millet '),
(385, NULL, ' Oat bran '),
(386, NULL, ' Rice '),
(387, NULL, ' Rice flour '),
(388, NULL, ' Rye flour '),
(389, NULL, ' Tapioca '),
(390, NULL, ' Wheat bran '),
(391, NULL, ' Wheat flour '),
(392, NULL, ' Wild rice '),
(393, NULL, ' Macaroni '),
(394, NULL, ' Pasta '),
(395, NULL, ' Rice noodles '),
(396, NULL, ' Quinoa '),
(397, NULL, ' Fast foods '),
(398, NULL, ' Fast Foods '),
(399, NULL, ' Fast food '),
(400, NULL, ' Pizza '),
(401, NULL, ' Fast Food '),
(402, NULL, ' Light Ice Cream '),
(403, NULL, ' Yogurt parfait '),
(404, NULL, ' School Lunch '),
(405, NULL, ' Macaroni and Cheese '),
(406, NULL, ' HOT POCKETS '),
(407, NULL, ' HOT POCKETS Ham \' N Cheese Stuffed Sandwich '),
(408, NULL, ' Ravioli '),
(409, NULL, ' Tortellini '),
(410, NULL, ' Chili con carne with beans '),
(411, NULL, ' Beef stew '),
(412, NULL, ' Chicken pot pie '),
(413, NULL, ' Lasagna '),
(414, NULL, ' Chili '),
(415, NULL, ' Lasagna with meat & sauce '),
(416, NULL, ' Egg rolls '),
(417, NULL, ' Rice bowl with chicken '),
(418, NULL, ' Macaroni and cheese dinner with dry sauce mix '),
(419, NULL, ' LEAN POCKETS '),
(420, NULL, ' Potato salad with egg '),
(421, NULL, ' Corn dogs '),
(422, NULL, ' Chicken tenders '),
(423, NULL, ' RICE - A - RONI '),
(424, NULL, ' Formulated bar '),
(425, NULL, ' Pretzels '),
(426, NULL, ' Popcorn '),
(427, NULL, ' Formulated Bar '),
(428, NULL, ' Rice crackers '),
(429, NULL, ' Dip '),
(430, NULL, ' Wasabi '),
(431, NULL, ' Cookie '),
(432, NULL, ' Waffles '),
(433, NULL, ' Sweet Potatoes '),
(434, NULL, ' Rice and vermicelli mix '),
(435, NULL, ' Taquitos '),
(436, NULL, ' Pasta mix '),
(437, NULL, ' Yellow rice with seasoning '),
(438, NULL, ' Pizza rolls '),
(439, NULL, ' Potsticker or wonton '),
(440, NULL, ' Macaroni or noodles with cheese '),
(441, NULL, ' Turnover '),
(442, NULL, ' Rice mix '),
(443, NULL, ' Dumpling '),
(444, NULL, ' Salisbury steak with gravy '),
(445, NULL, ' Restaurant '),
(446, NULL, ' Creamy dressing '),
(447, NULL, ' Imitation cheese '),
(448, NULL, ' Turkey ham '),
(449, NULL, ' Whipped topping '),
(450, NULL, ' Granola bar '),
(451, NULL, ' Salad Dressing '),
(452, NULL, ' Papad '),
(453, NULL, ' Rice cake '),
(454, NULL, ' Fluid replacement '),
(455, NULL, ' Breakfast bars '),
(456, NULL, ' Vermicelli '),
(457, NULL, ' Luncheon slices '),
(458, NULL, ' Meatballs '),
(459, NULL, ' Vegetarian fillets '),
(460, NULL, ' Vegetarian meatloaf or patties '),
(461, NULL, ' Beverage '),
(462, NULL, ' Bacon bits '),
(463, NULL, ' Butter replacement '),
(464, NULL, ' Quail '),
(465, NULL, ' Pheasant '),
(466, NULL, ' Dove '),
(467, NULL, ' Soybean '),
(468, NULL, ' Tomato and vegetable juice '),
(469, NULL, ' Cranberry juice '),
(470, NULL, ' Hearts of palm '),
(471, NULL, ' Yeast extract spread '),
(472, NULL, ' Tofu yogurt '),
(473, NULL, ' Breakfast bar '),
(474, NULL, ' Frog legs '),
(475, NULL, ' Turtle '),
(476, NULL, ' REDUCED SODIUM: Ham '),
(477, NULL, ' REDUCED SODIUM: Roast beef '),
(478, NULL, ' REDUCED SODIUM: Pepperoni '),
(479, NULL, ' REDUCED SODIUM: Salami '),
(480, NULL, ' REDUCED SODIUM: Turkey breast '),
(481, NULL, ' REDUCED SODIUM: Chicken breast '),
(482, NULL, ' REDUCED SODIUM: Bologna '),
(483, NULL, ' REDUCED SODIUM: Nuts '),
(484, NULL, ' Vitamin D as ingredient '),
(485, NULL, 'Panko'),
(486, NULL, 'Red Pepper Flakes'),
(487, NULL, 'Rosemary'),
(488, NULL, 'Shallots'),
(489, NULL, 'Black Pepper'),
(490, NULL, 'Kosher Salt'),
(491, NULL, 'Olive Oil'),
(492, NULL, 'White Wine'),
(493, NULL, 'Shrimp'),
(494, NULL, 'Bell Pepper'),
(495, NULL, 'Chocolate'),
(496, NULL, 'Pecans'),
(497, NULL, 'Brown Sugar'),
(498, NULL, 'Brown Rice'),
(499, NULL, 'Brandy'),
(500, NULL, 'Heavy Whipping Cream'),
(501, NULL, 'Baking Powder'),
(502, NULL, 'Flour'),
(503, NULL, 'Red Onion'),
(504, NULL, 'Red Onion'),
(505, NULL, 'Cream Cheese'),
(506, NULL, 'Parmesan Cheese'),
(507, NULL, 'Feta Cheese'),
(508, NULL, 'Manchego Cheese'),
(509, NULL, 'Dark Rum'),
(510, NULL, 'Breadcrumbs'),
(511, NULL, 'Vegetable Stock'),
(512, NULL, 'Beef Stock'),
(513, NULL, 'Beef Chuck'),
(514, NULL, 'Ground Beef'),
(515, NULL, 'Beef Bouillon'),
(516, NULL, 'Green Beans'),
(517, NULL, 'Salad Greens'),
(518, NULL, 'Nutmeg'),
(519, NULL, 'Vegetable Oil'),
(520, NULL, 'Cream of Tartar'),
(521, NULL, 'Beer'),
(522, NULL, 'Red Wine Vinegar'),
(523, NULL, 'Dill'),
(524, NULL, 'Crème Fraîche'),
(526, NULL, 'Prunes'),
(527, NULL, 'Buttermilk'),
(528, NULL, 'Bay Leaf'),
(529, NULL, 'Black Beans'),
(530, NULL, 'Cinnamon'),
(531, NULL, 'Pie shell'),
(532, NULL, 'Smoked Salmon'),
(533, NULL, 'Thyme'),
(534, NULL, 'Maple Syrup'),
(535, NULL, 'Balsamic Vinegar'),
(536, NULL, 'Cumin'),
(537, NULL, 'Roma Tomatoes'),
(538, NULL, 'Oregano'),
(539, NULL, 'Cocktail Sauce'),
(540, NULL, 'Cocoa Powder'),
(541, NULL, 'Baking Soda'),
(542, NULL, 'Vegetable Shortening'),
(543, NULL, 'Protein Powder'),
(544, NULL, 'Hemp Seeds'),
(545, NULL, 'Flax Seeds'),
(546, NULL, 'Dijon Mustard'),
(547, NULL, 'Pistachios'),
(548, NULL, 'Grape Tomatoes'),
(549, NULL, 'Almond Milk'),
(550, NULL, 'Almond Butter'),
(551, NULL, 'Jalapenos'),
(552, NULL, 'Mozzarella'),
(553, NULL, 'Dijon Mustard'),
(554, NULL, 'Dijon mustard'),
(555, NULL, 'Baby Spinach'),
(556, NULL, 'Kalamata Olives'),
(557, NULL, 'Kalamata Olives');

-- --------------------------------------------------------

--
-- Table structure for table `RATINGS`
--

CREATE TABLE `RATINGS` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `stars` int(2) NOT NULL COMMENT 'Stored as 1-10, displayed as 5 stars with 1/2-star increments.',
  `date_rated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='On re-review, update the table';

-- --------------------------------------------------------

--
-- Table structure for table `RECIPEINGREDIENTS`
--

CREATE TABLE `RECIPEINGREDIENTS` (
  `recipe_ingredient_id` int(11) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RECIPEINGREDIENTS`
--

INSERT INTO `RECIPEINGREDIENTS` (`recipe_ingredient_id`, `ingredient_id`, `recipe_id`, `text`) VALUES
(1, 485, 619, '2/3 cup panko'),
(2, 486, 619, '1/4 teaspoon red pepper flakes'),
(3, 128, 619, '1/2 lemon, zested and juiced'),
(4, 487, 619, '1 teaspoon rosemary, minced'),
(5, 223, 619, '3 tablespoon parsley, minced'),
(6, 210, 619, '4 cloves garlic, minced'),
(7, 488, 619, '1/4 cup shallots, minced'),
(8, 4, 619, '8 tablespoons unsalted butter, at room temperature'),
(9, 489, 619, 'Freshly ground black pepper'),
(10, 490, 619, 'Kosher salt'),
(11, 491, 619, '3 tablespoon olive oil'),
(12, 492, 619, '2 tablespoon dry white wine'),
(13, 493, 619, '2 pound frozen shrimp'),
(14, 16, 619, '1 extra-large egg yolk'),
(29, 368, 620, '2 tbsp powdered sugar'),
(30, 500, 620, '1/2 pt heavy whipping cream'),
(31, 162, 620, '1 lb strawberries (2 pints)'),
(32, 499, 620, '4 tbsp brandy'),
(33, 244, 621, '4 c tomatoes, minced, peeled, and cored'),
(34, 511, 621, '4 cup vegetable stock'),
(35, 31, 621, '12 basil leaves'),
(36, 500, 621, '1 c heavy cream'),
(37, 4, 621, '1/4 lb unsalted butter'),
(38, 33, 621, 'Salt'),
(39, 210, 621, '1/4 tbsp black pepper'),
(40, 33, 622, '1/4 tbsp salt'),
(41, 16, 622, '3 eggs'),
(42, 4, 622, '4 tbsp butter'),
(43, 509, 622, '2 tbsp dark rum'),
(44, 346, 622, '2/3 cup golden syrup'),
(45, 497, 622, '1 cup dark brown sugar, well-packed'),
(46, 496, 622, '2 cup pecans, chopped'),
(47, 531, 622, '9-inch unbaked pie shell'),
(48, 502, 623, '1 cup all-purpose flour\r'),
(49, 368, 623, '1 1/2 tsp sugar\r'),
(50, 501, 623, '1/2 tsp baking powder\r'),
(51, 33, 623, '1/4 tsp salt\r'),
(52, 267, 623, '1/2 tsp pepper, freshly ground\r'),
(53, 16, 623, '2 large eggs, separated\r'),
(54, 13, 623, '1 cup milk\r'),
(55, 4, 623, '3 tbsp unsalted butter, melted and slightly cooled, divided use\r'),
(56, 129, 623, '1 tsp fresh lemon juice\r'),
(57, 523, 623, '1/4 cup fresh dill, chopped and firmly packed\r'),
(58, 532, 623, '3 1/2 tbsp smoked salmon, minced (about 4 oz)\r'),
(59, 505, 623, '3 1/2 tbsp whipped-style cream cheese, at room temperature\r'),
(60, 539, 623, '2 servings of cocktail sauce'),
(83, 495, 624, '4 (1 oz.) squares Godiva cooking chocolate or 4 oz. Baker\'s German sweet chocolate\r\n'),
(84, 35, 624, '1/2 tsp vanilla\r'),
(85, 496, 624, '1 cup pecans, finely chopped\r'),
(86, 368, 624, '1/2 cup sugar\r'),
(87, 520, 624, '1/8 tsp cream of tartar\r'),
(88, 33, 624, '1/8 tsp salt\r'),
(89, 16, 624, '2 egg whites, at room temperature\r'),
(90, 280, 624, '3 tbsp water\r'),
(91, 35, 624, '1 tsp vanilla\r'),
(92, 500, 624, '1 cup heavy cream, whipped'),
(93, 223, 625, '2 teaspoon fresh parsley, chopped\r'),
(94, 210, 625, '1 teaspoon garlic, minced\r'),
(95, 4, 625, '3 tablespoon butter\r'),
(96, 518, 625, '1 pinch nutmeg\r'),
(97, 501, 625, '1/4 teaspoon baking powder\r'),
(98, 33, 625, '1 teaspoon salt\r'),
(99, 13, 625, '1/2 cup milk\r'),
(100, 502, 625, '1 1/2 cup flour, sifted\r'),
(101, 16, 625, '2 eggs, slightly beaten\r'),
(102, 506, 625, '2 tablespoon finely grated Parmesan, plus extra for garnish\r'),
(104, 33, 625, 'Salt'),
(105, 210, 625, 'Freshly ground black pepper'),
(106, 96, 626, '1/2 pound bacon, cut into large lardons\r'),
(107, 221, 626, '2 medium onions, sliced\r'),
(108, 490, 626, 'Kosher salt and freshly ground black pepper\r'),
(109, 519, 626, '1 tablespoon vegetable oil\r'),
(110, 513, 626, '1 1/2 pound beef chuck, cut into large cubes\r'),
(111, 192, 626, '5 carrots, peeled and cut into large chunks\r'),
(112, 502, 626, '1 tablespoon all-purpose flour\r'),
(113, 521, 626, '12 ounce beer (dark or light)\r'),
(114, 526, 626, '6 prunes\r'),
(115, 533, 626, '1 tablespoon dried thyme\r'),
(116, 512, 626, '1 cup beef stock'),
(117, 514, 627, '1 pound ground beef\r'),
(118, 221, 627, '1 cup onion, chopped\r'),
(119, 228, 627, '1 cup potatoes, diced\r'),
(120, 192, 627, '1 cup carrots, sliced\r'),
(121, 196, 627, '1 cup celery, diced\r'),
(122, 244, 627, '2 16oz can diced tomatoes in juice (or substitute 2 small cans of tomato sauce)\r'),
(123, 280, 627, '4 cup water\r'),
(124, 31, 627, '1/4 tsp dried basil, crushed\r'),
(125, 533, 627, '1/4 tsp dried thyme\r'),
(126, 528, 627, '1 bay leaf\r'),
(127, 33, 627, '1/2 tsp salt\r'),
(128, 267, 627, '1/4 tsp pepper\r'),
(129, 210, 627, '1/2 tsp garlic powder\r'),
(130, 515, 627, '2 tablespoon beef bouillon\r'),
(131, 202, 627, '1 16oz can corn\r'),
(132, 516, 627, '1 16oz can green beans\r'),
(133, 225, 627, '1 16oz can green peas'),
(134, 506, 628, '1/2 cup grated Parmesan cheese\r'),
(135, 314, 628, '1/2 stack Keebler Club Crackers, crushed\r'),
(136, 16, 628, '2 eggs\r'),
(137, 13, 628, '1 cup milk\r'),
(138, 486, 628, '1/2 teaspoon crushed red pepper flakes, or to taste\r'),
(139, 4, 628, '1/2 cup butter, divided use\r'),
(140, 221, 628, '3 large onions'),
(141, 505, 629, '2 1/2 cup cream cheese, room temperature\r'),
(142, 368, 629, '1/2 cup sugar\r'),
(143, 540, 629, '1 3/4 tablespoon cocoa powder\r'),
(144, 495, 629, '5 tablespoon Godiva 85% Dark Chocolate Callets\r'),
(145, 16, 629, '2 eggs\r'),
(146, 16, 629, '2 egg yolks\r'),
(147, 524, 629, '1 3/4 tablespoon crème fraîche'),
(148, 129, 630, '6 tablespoon lemon juice\r'),
(149, 210, 630, '2 clove garlic, minced\r'),
(150, 490, 630, '2 teaspoon kosher salt, plus more to taste\r'),
(151, 491, 630, '1 cup extra-virgin olive oil, preferably Greek\r'),
(152, 557, 630, '1 head romaine lettuce, trimmed of tough stems and torn into bite-sized pieces\r\n'),
(153, 556, 630, '1 cup kalamata olives, about 6oz/cup\r'),
(154, 507, 630, '1/2 pound Feta cheese, crumbled\r'),
(155, 205, 630, '1 cucumber, trimmed, cut into 1 inch chunks\r'),
(156, 244, 630, '1 1/2 cup grape tomatoes, halved\r'),
(157, 504, 630, '1 small red onion, cut into 1/2-inch wedges, soaked in cold water for 5 minutes and drained\r'),
(158, 538, 630, '2 teaspoon dried oregano\r'),
(159, 210, 630, 'Freshly ground black pepper'),
(160, 4, 631, '8 tablespoon unsalted butter, cold, lightly floured and cut into 1/8-inch slices\r'),
(161, 542, 631, '2 tablespoon vegetable shortening, cut into 1/2-inch chunks\r'),
(162, 33, 631, '1 teaspoon salt\r'),
(163, 501, 631, '1 tablespoon baking powder\r'),
(164, 541, 631, '1/2 teaspoon baking soda\r'),
(165, 502, 631, '2 1/2 cup unbleached all-purpose flour\r'),
(166, 4, 631, '2 tablespoon butter, melted\r'),
(167, 527, 631, '1 1/4 cup buttermilk, cold'),
(176, 488, 633, '1 small shallot, finely chopped\r'),
(177, 535, 633, '1/4 cup sherry vinegar or balsamic vinegar\r'),
(178, 553, 633, '2 teaspoon Dijon mustard\r'),
(179, 490, 633, '1/4 teaspoon kosher salt\r'),
(180, 210, 633, '1/4 teaspoon freshly ground black pepper\r'),
(181, 491, 633, '1/2 cup olive oil'),
(182, 244, 634, '1 plum tomato, halved\r'),
(183, 244, 634, '4 sun-dried tomatoes packed in oil\r'),
(184, 49, 634, '2 tablespoon oil from the sun-dried tomato jar\r'),
(185, 522, 634, '2 tablespoon red wine vinegar\r'),
(186, 210, 634, '1 clove garlic\r'),
(187, 538, 634, '1/2 teaspoon dried oregano\r'),
(188, 31, 634, '1/4 bunch fresh basil, torn\r'),
(189, 506, 634, '2 tbsp parmesan, grated\r'),
(190, 490, 634, 'Kosher salt\r'),
(191, 210, 634, 'Freshly ground pepper\r'),
(192, 491, 634, '2 tablespoon extra-virgin olive oil\r'),
(193, 510, 634, '1 cup breadcrumbs\r'),
(194, 223, 634, '2 tablespoon chopped fresh parsley\r'),
(195, 506, 634, '1/4 cup parmesan, grated\r'),
(196, 517, 634, '8 cup Italian-blend salad greens\r'),
(197, 31, 634, '3/4 bunch fresh basil, chiffonade\r'),
(198, 552, 634, '8 ounce bocconcini (mozzarella), quartered'),
(199, 132, 635, '1 lime, zested and juiced\r'),
(200, 535, 635, '1 tablespoon balsamic vinegar\r'),
(201, 31, 635, '1/4 cup basil leaves, chopped\r'),
(202, 536, 635, '1/2 teaspoon cumin\r'),
(203, 491, 635, '2 tablespoon extra-virgin olive oil\r'),
(204, 490, 635, 'Kosher salt\r'),
(205, 210, 635, 'Freshly ground black pepper\r'),
(206, 205, 635, '1/2 cucumber, cubed\r'),
(207, 106, 635, '1 avocado, cubed\r'),
(208, 494, 635, '1 red bell pepper, cubed\r'),
(209, 529, 635, '1/2 cup black beans, rinsed and drained\r'),
(210, 244, 635, '1 tomato, cubed\r'),
(211, 498, 635, '1/2 cup brown rice, cooked'),
(212, 106, 636, '4 ripe avocados\r'),
(213, 537, 636, '2 roma tomatoes, diced fine\r\n'),
(214, 504, 636, '1/2 red onion, minced\r'),
(215, 201, 636, '1/2 handful cilantro, minced\r'),
(216, 210, 636, '2 clove garlic, minced\r'),
(217, 132, 636, '1 lime, juiced\r'),
(218, 33, 636, 'Pinch of sea salt\r'),
(219, 551, 636, '1 jalapeno, seeded and minced fine (optional)'),
(220, 107, 637, '1 banana\r'),
(221, 550, 637, '2 tbsp almond butter\r'),
(222, 117, 637, '6 dates\r'),
(223, 534, 637, '1 tsp maple syrup\r'),
(224, 530, 637, '2 tsp cinnamon\r'),
(225, 549, 637, '2 cup almond milk, or skim milk'),
(226, 517, 638, '2 cup salad greens\r'),
(227, 205, 638, '1/4 cucumber, sliced\r'),
(228, 548, 638, '1/2 cup grape tomatoes\r'),
(229, 529, 638, '1/4 cup black beans, drained and rinsed\r'),
(230, 285, 638, '1/4 cup chickpeas, drained and rinsed\r'),
(231, 547, 638, '1 tbsp pistachios\r'),
(232, 114, 638, '2 tbsp dried cranberries\r'),
(233, 33, 638, 'salt and pepper, to taste\r'),
(234, 491, 638, '2 tbsp olive oil\r'),
(235, 522, 638, '1 tbsp red wine vinegar\r'),
(236, 546, 638, '1 tsp Dijon mustard'),
(237, 543, 639, '1 scoop protein powder (optional)\r'),
(238, 545, 639, '1 tbsp ground flax seeds\r'),
(239, 544, 639, '2 tbsp hemp seeds\r'),
(240, 291, 639, '2 tbsp peanut butter\r'),
(241, 107, 639, '1 banana\r'),
(242, 160, 639, '1 cup raspberries\r'),
(243, 111, 639, '1 cup blueberries\r'),
(244, 13, 639, '1 1/2 cup milk');

-- --------------------------------------------------------

--
-- Table structure for table `RECIPES`
--

CREATE TABLE `RECIPES` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `servings` int(2) NOT NULL,
  `instructions` varchar(8191) COLLATE utf8_unicode_ci NOT NULL,
  `story` varchar(8191) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL COMMENT 'in minutes; converted manually',
  `difficulty` int(1) NOT NULL COMMENT 'stored as 1-5, from easy to hard',
  `image_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'should be stored remotely'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RECIPES`
--

INSERT INTO `RECIPES` (`recipe_id`, `user_id`, `name`, `date_created`, `servings`, `instructions`, `story`, `time`, `difficulty`, `image_url`) VALUES
(619, 96, 'Baked Shrimp Scampi', '2014-05-19', 6, 'Preheat the oven to 425 degrees F.\r\n\r\n\r\nDefrost shrimp by putting in cold water, drain. Place the shrimp in serving dish (9x13 or 2 quart casserole) and toss gently with the olive oil, wine, 1 teaspoons salt, and 1 teaspoon pepper. Allow to sit at room temperature while you make the butter and garlic mixture.\r\n\r\nIn a small bowl, mash the softened butter with the garlic, shallots, parsley, rosemary, red pepper flakes, lemon zest, lemon juice, egg yolk, panko, 1/2 teaspoon salt, and 1/4 teaspoon of pepper until combined.\r\n\r\n\r\nSpread the butter mixture evenly over the shrimp. Bake for 10 to 12 minutes until hot and bubbly. If you like the top browned, place under a broiler for 1-3 minutes (keep an eye on it). Serve with lemon wedges and French bread.\r\n\r\n\r\nNote: if using fresh shrimp, arrange for presentation. Starting from the outer edge of a 14-inch oval gratin dish, arrange the shrimp in a single layer cut side down with the tails curling up and towards the center of the dish. Pour the remaining marinade over the shrimp.', 'An easy but fancy dish, and it can be prepped in 10 minutes too', 40, 2, 'https://cafedelites.com/wp-content/uploads/2017/10/Baked-Shrimp-Scampi-IMAGE-330.jpg'),
(620, 54, 'Strawberries Romanov', '2015-11-18', 4, 'Wash strawberries and cut the tops off. Let strawberries drain.\r\nMix together heavy whipping cream, powdered sugar, and the brandy.\r\nBeat with a mixer till this becomes thick.\r\nPlace strawberries into glasses and spoon over the sauce.\r\n\r\n', 'A childhood dessert, and I still have it too often!', 10, 1, 'https://www.healthywomen.org/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8xOTE1NzM3My9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY2MTg3NTE2N30.mc96FoPc8PjMjLsBYF-AwOFOY7bKcXkoSlLmQ39wlxs/image.jpg?width=980&quality=85'),
(621, 84, 'Tomato Basil Soup', '2019-01-08', 4, 'Combine tomatoes, juice/and or possibly stock in saucepan. Simmer 30 min. Puree, along with the basil leaves, in small batches, in blender or food processor or use an immersion blender in the pan.\r\n\r\n\r\n\r\nReturn to saucepan and add in cream and butter, while stirring over low heat. Garnish with basil leaves and serve with your favorite bread.', 'This is one of the earlier recipes I discovered during my student life, hope you enjoy :)', 40, 1, 'https://thecozyapron.com/wp-content/uploads/2012/02/tomato-basil-soup_thecozyapron_1.jpg'),
(622, 106, 'Pecan Pie', '2014-07-26', 12, 'Preheat oven to 350F. In a large saucepan, heat the brown sugar, golden syrup and butter to the boiling point.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nStirring constantly and scraping back any foam that clings to the side of the pan, let this mixture boil for about 1 minute.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nRemove from the heat and let cool while, in a separate bowl, you beat the eggs until creamy. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nWhen the boiled syrup has cooled, beat in the eggs, salt and pecans. Pour into the unbaked pie shell and bake for about 50 minutes.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nA little cream (about 1/4 to 1/2 cup) mixed into a pecan pie filling before baking gives it a richer, lighter texture. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nFor a sweeter, lighter pie: add more sugar and use fewer pecans; for a denser, less sweet pie: add more pecans and use less sugar. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nThe buttery flavour and the lard-induced flakiness of a butter and lard crust make it the perfect one for a perfect pecan pie. And a Southern pecan pie authority I know suggests that you roll out the dough a little thicker than usual; a thick, richly shortened crust provides an appetizing balance to the sweetness of the filling. ', 'Buttery, nutty and sweet. You can\'t not like this pie', 10, 1, 'https://www.simplyrecipes.com/thmb/KwoRPvcuIIQBphLKbU995_gED9o=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2014__11__Pecan-Pie-LEAD-1-e189ae6b84724b49b445c55c41a37054.jpg'),
(623, 29, 'Smoked Salmon Ebelskivers', '2022-08-24', 3, 'Preheat oven to 200F.\r\n\r\n\r\n\r\nIn a large bowl, whisk together the flour, sugar, baking powder, salt, and pepper.\r\n\r\nIn a small bowl, lightly whisk the egg yolks, then whisk in the milk, 2 tablespoons of melted butter and lemon juice.\r\n\r\nAdd the yolk mixture to the flour mixture and, using a wooden spoon, stir until well blended. The batter will be lumpy.\r\n\r\n\r\n\r\nIn a clean bowl, using an electric mixer on high speed, beat the egg whites until stiff, but not dry, peaks form. Using a silicone spatula, fold about one-third of the egg whites into the batter to lighten it, then fold in the rest just until no white streaks remain. Stir in fresh dill.\r\n\r\n\r\n\r\nBrush the wells of the ebelskiver pan with some of the remaining melted butter and place over medium heat.\r\n\r\nWhen the butter starts to bubble, add about 1 tablespoon batter to each well. Working quickly, carefully spoon about 1/2 teaspoon of the smoked salmon into the center of each pancake, then spoon about 1/2 teaspoon of the cream cheese on top.\r\n\r\nTop each with another 1 tablespoon batter. (Alternatively, gently mix the cream cheese and salmon together. Spoon about 1 teaspoon into the center of each pancake)\r\n\r\n\r\n\r\nCook until the bottoms of the pancakes are lightly browned and crisp, 3-5 minutes.\r\n\r\nUse 2 short wooden skewers to turn all the pancakes and cook until lightly browned on the second side, about 3 minutes longer.\r\n\r\n\r\n\r\nTransfer the finished pancakes to a platter and keep warm  in the oven while you repeat to make 2 more batches. Serve right away.', 'This one really makes you feel like a professional chef even if you are just a student in a dorm', 18, 4, 'http://themessybaker.com/wp-content/uploads/2013/04/salmon-ebelskivers.gif'),
(624, 24, 'Godiva Angel Pie', '2022-03-14', 12, 'TO MAKE SHELL: Preheat oven to 300 degrees.\r\nIn mixer bowl, beat egg whites until foamy.\r\nBeat in salt and cream of tartar and beat until soft peaks form.\r\nAdd sugar, a tablespoon at a time, beating after each addition. Continue until very stiff peaks form.\r\nFold in nuts and vanilla.\r\nLightly butter a metal 8-inch pie plate. (Do NOT use glass.) Spoon meringue into pan lightly, building up the edges to come at least 1/2 inch above the side of the pan.\r\nBake in preheated 300 degree oven for 35 to 40 minutes until light brown. Cool completely before adding filling.\r\n\r\nTO MAKE FILLING: Melt chocolate and water in a pan over hot, but not boiling, water, stirring occasionally, to blend.\r\nAdd vanilla and chocolate mixture (cooled) to whipped cream and pile into meringue shell, swirling top with spatula.\r\nBe sure to cool the chocolate mixture before adding to the whipped cream. If it is too warm, the mixture will thin out. If this happens, chill until it is thick enough to put in shell.', 'Makes Godiva feel even fancier. Give it a go!', 20, 5, 'https://www.yourhomebasedmom.com/wp-content/uploads/2017/04/Chocolate-Angel-Pie_0007.jpg'),
(625, 25, 'Spaetzle', '2021-07-19', 4, 'Bring a saucepan of salted water it a boil, reduce the heat, and maintain a simmer.\r\n\r\nIn a bowl, stir all the ingredients together (eggs, flour, milk, salt, baking powder, and nutmeg). \r\n\r\nPlace a colander over the pan, pour about 1/4 of the batter into the colander, and press through the holes with a plastic spatula into the hot water.\r\n\r\nWhen the spatzle starts to float to the surface, cover the pan and keep covered until the spatzle appears to swell and is fluffy.\r\n\r\nRemove the dumplings and repeat the procedure with the remaining batter.\r\n\r\n\r\n\r\nIn a medium saute pan, add butter, and melt over medium heat until butter turns a light brown. Add garlic and cook until it becomes lightly colored.\r\n\r\nAdd spaetzle to the pan to heat through. Add parsley, cheese, salt and pepper, to taste.', 'My favourite German comfort food :)', 20, 2, 'https://497543-1573563-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/01/German-Spaetzle-Recipe-dumplings-1.jpg'),
(626, 84, 'Pot Roast Carbonnade', '2015-04-09', 4, 'Preheat the oven to 325 degrees F.\r\n\r\n\r\n\r\nIn a large Dutch oven over medium-low heat, add the bacon and cook until it renders its fat and almost becomes crispy.\r\n\r\nRemove it with a slotted spoon to a plate.\r\n\r\nAdd the onions, season with salt and pepper, to taste, and cook over low heat until they are deep in colour and caramelized, about 30 minutes.\r\n\r\n\r\n\r\nRemove the onions to a plate, leaving as much fat in the pot as possible.\r\n\r\nAdd the vegetable oil and mix it with the bacon fat.\r\n\r\nRaise the heat to high.\r\n\r\nSeason the beef liberally with salt and pepper and sear, in batches, until nicely browned on both sides.\r\n\r\n\r\n\r\nOnce the meat is browned, add the first batch of meat back to the pan along with the onions, carrots and bacon.\r\n\r\nSprinkle in the flour and stir. Cook for 1 minute before deglazing the pan with the beer.\r\n\r\nAdd the remaining ingredients and bring the mixture to a simmer.\r\n\r\nCover the pot and put it in the oven to braise until the beef is tender, about 2 hours.\r\n\r\nRemove the pot from the oven and transfer the pot roast to a serving dish.', 'Goes amazing over some mashed potatoes!', 50, 4, 'https://img.taste.com.au/041EhDng/taste/2016/11/beef-carbonnade-88664-1.jpeg'),
(627, 72, 'Old Fashion Vegetable Soup', '2020-05-05', 6, 'In a large soup pot, brown ground beef and onion, drain off fat.\r\n\r\nAdd remaining ingredients EXCEPT for last 3 items (canned vegetables).\r\n\r\nSimmer on low heat until vegetables are tender, about an hour.\r\n\r\nAdd canned vegetables and simmer 5 minutes.  Remove bay leaf and serve.', 'For when you want a simple soup :)', 50, 4, 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8643443.jpg'),
(628, 17, 'Onion Pie', '2018-02-22', 6, 'Preheat the oven to 400 degrees halfway through onion cooking.\r\n\r\n\r\n\r\nSlice the onions and saute in 4 tablespoons butter over medium-low heat; the longer you cook them - as long as 35 minutes - the sweeter they will be.  Sprinkle in crushed red pepper.\r\n\r\n\r\n\r\nMelt the remaining 4 tablespoons butter.  Mix with the crushed crackers, then press the mixture into the bottom and sides of a glass pie plate to form a crust.  Prebake crust for 10 minutes.\r\n\r\n\r\n\r\nLightly beat the eggs and milk together in a small bowl.\r\n\r\n\r\n\r\nSpoon the onions into the crust, then pour the egg mixture over them.  Sprinkle with Parmesan.\r\n\r\n\r\n\r\nBake for 30-40 minutes until set and golden.', 'Onion lovers will really enjoy this!', 20, 3, 'https://images.immediate.co.uk/production/volatile/sites/2/2017/10/cheese-and-onion-pie_charlie-richards-8cc1a77.jpg?quality=45&resize=768,574'),
(629, 78, 'Godiva Dark Chocolate Cheesecake', '2015-08-16', 10, 'In a food processor with a blade attachment, cream the cheese until smooth and then add in sugar. Pulse a couple times to incorporate sugar and cocoa powder. \r\n\r\nAdd in eggs and yolks pulsing a couple times again and scrape down to ensure all is smooth and uniform. With machine running, pour in melted Godiva Chocolate in a steady stream until all in, and finish by pulsing in the crème fraîche.\r\n\r\nPour batter into a 10\" x 10\" baking pan and bake at 325 for 30, minutes or until custard is set and a toothpick inserted in center can be removed cleanly. The top may caramelize or brown slightly, which is not an issue.\r\n\r\nOnce set, remove from oven and allow cheesecake to cool completely. Wrap the pan with plastic and reserve in cooler to set and chill completely.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nOnce the cheesecake is cold and firm, remove it from the pan and place in a mixer bowl with a paddle attachment.\r\n\r\nBeat the cake for a few moments to soften and smooth out the custard.\r\n\r\nPlace smoothed custard into a piping bag with a plain tip and pipe into the bottom of a plastic lined half cylinder mold.\r\n\r\nTap the mold to ensure the custard is solid and then flatten out to top. Freeze the mold to harden the custard for unmolding.\r\n\r\nOnce the cake can be unmolded, remove from the pan and cut into 1\" sections.\r\n\r\nBrush some tempered Godiva Dark Chocolate onto a strip of acetate and, while it is still fluid, smooth over the top of the molded cheesecake.\r\n\r\nOnce the chocolate has cooled and completely crystallized, remove the acetate, revealing a shiny and textured chocolate finish.', 'Be sure not to make this every week! Only on special occasions hahah', 40, 5, 'assets/img/recipeimg/cake.jpg'),
(630, 33, 'Greek Salad', '2014-09-20', 4, 'In a small bowl, whisk together the lemon juice, garlic, salt, and oil. Set aside.\r\n\r\nIn a large bowl lightly toss the lettuce with the olives, cheese, cucumber, tomatoes, onion, oregano, and black pepper.\r\n\r\nLet sit up to 2 hours.\r\n\r\nTo serve, toss salad with dressing and place sliced chicken on top.', 'I always make this whenever I feel I\'ve been too unhealthy. You know how the student life can get ', 20, 2, 'https://www.themediterraneandish.com/wp-content/uploads/2020/02/Greek-salad-recipe-3.jpg'),
(631, 31, 'Flaky Buttermilk Biscuits', '2020-01-18', 12, 'Adjust oven rack to lower-middle position; heat oven to 450 degrees.  \r\n\r\n\r\n\r\nWhisk flour, baking power, baking soda, and salt in large bowl.\r\n\r\n\r\n\r\nAdd shortening to flour mixture; break up chunks with fingertips until only pea-sized pieces remain.\r\n\r\nWorking in batches, drop butter slices into flour mixture and toss to coat; pick up each slice of butter and press between floured fingertips into flat, nickel-sized pieces.\r\n\r\nRepeat until all butter is incorporated; toss to combine.\r\n\r\nFreeze mixture (in bowl) until chilled, about 15 minutes.\r\n\r\n\r\n\r\nSpray 24-square-inch work surface with nonstick cooking spray; spread spray evenly across surface with kitchen towel or paper towel.\r\n\r\nSprinkle 1/3 cup of extra flour across sprayed area; gently spread flour across work surface with palm to form thin, even coating.\r\n\r\nAdd all but 2 tablespoons of buttermilk to flour mixture; stir briskly with fork until ball forms and no dry bits of flour are visible, adding remaining buttermilk as needed (dough will be sticky and shaggy but should clear sides of bowl).\r\n\r\nWith rubber spatula, transfer dough onto center of prepared work surface, dust surface lightly with flour, and, with floured hands, bring dough together into cohesive ball.\r\n\r\n\r\n\r\nPat dough into approximate 10-inch square; roll into 18- by 14-inch rectangle about 1/4 inch thick, dusting dough and rolling pin with flour as needed.\r\n\r\nUsing bench scraper or thin metal spatula, fold dough into thirds, brushing any excess flour from surface; lift short end of dough and fold in thirds again to form approximate 6- by 4-inch rectangle.\r\n\r\nRotate dough 90 degrees, dusting work surface underneath with flour; roll and fold dough again, dusting with flour as needed.\r\n\r\n\r\n\r\nRoll dough into 10-inch square about 1/2 inch thick; flip dough and cut nine 3-inch rounds with floured biscuit cutter, dipping cutter back into flour after each cut.\r\n\r\nCarefully invert and transfer rounds to ungreased baking sheet, spaced 1 inch apart.\r\n\r\nGather dough scraps into ball; roll and fold once or twice until scraps form smooth dough.\r\n\r\nRoll dough into 1/2-inch-thick round; cut 3 more 3-inch rounds and transfer to baking sheet.  Discard excess dough.\r\n\r\n\r\n\r\nBrush biscuit tops with melted butter.\r\n\r\nBake, without opening oven door, until tops are golden brown and crisp, 15 to 17 minutes.\r\n\r\nLet cool on baking sheet 5 to 10 minutes before serving.', 'Used to make this with my Mum and I whip it up whenever I miss home. All the effort is definitely worth it :)', 40, 5, 'https://www.cookingmaniac.com/wp-content/uploads/2015/09/buttermilk-biscuit-1.jpg'),
(633, 82, 'Sherry Vinaigrette', '2015-05-08', 1, 'Whisk together the shallot, vinegar, mustard, salt, and pepper in a small bowl. Slowly whisk in the oil until emulsified.', 'Rich, tangy and sweet. Just wonderful all around and it brightens up even plain salad greens. I use it on my Grilled Portobello Mushrooms, check that out next!', 40, 2, 'https://www.cookingclarified.com/wp-content/uploads/2016/09/Sherry-Dijon-Vinaigrette-9-1024x683.jpg'),
(634, 97, 'Margherita Salad', '2020-07-16', 4, 'Puree the plum tomato, sun-dried tomatoes, vinegar, garlic, oregano, a basil leaves and parmesan in a blender, drizzling in the sun-dried tomato oil until smooth.\r\n\r\nAdd 2 to 3 tablespoons water, if needed to make a pour-able dressing; season with salt and pepper.\r\n\r\n\r\n\r\nHeat the olive oil in a large skillet over medium-high heat. Add the breadcrumbs, season with salt and pepper and cook, stirring occasionally, until golden, about 2 minutes.\r\n\r\nAdd the remaining parmesan and the parsley and cook until toasted, about 1 more minute.\r\n\r\n\r\n\r\nToss the salad greens, mozzarella, and remaining basil in a large bowl.\r\n\r\nToss with the dressing, then sprinkle with the breadcrumb mixture.', 'I like to use home made bread crumbs instead of store bought.\r\n\r\nThey stay crispier on the salad.\r\n\r\nEnjoy! :)', 50, 3, 'https://media.chefdehome.com/740/0/0/caprese/cherry-tomato-mozzarella-salad.jpg'),
(635, 108, 'Mexican Ensalada', '2022-08-01', 2, 'In small bowl, whisk together dressing ingredients.\r\n\r\n\r\n\r\nChop up additional ingredients bite size and add to a medium bowl.\r\n\r\n\r\n\r\nCombine dressing and all ingredients in a large bowl, toss, and serve.\r\n\r\nAnd here\'s an alternate dressing: 1/2 lemon, juiced; 1 tbsp apple cider vinegar; 2 tbsp olive oil; 2 tablespoons cilantro, chopped.', 'For when you want something really savory', 50, 2, 'https://hispanickitchen-nglmedia.netdna-ssl.com/wp-content/uploads/2017/07/Ensalada-de-Pollo_1500-700x500.jpg'),
(636, 50, 'Guacamole', '2021-05-10', 8, 'Place all ingredients in a bowl with a flat bottom and mash it with a potato masher.  Alternatively, you can mix everything briefly in a food processor.\r\n\r\nStir well and keep refrigerated. This dish will brown on the areas exposed to air within a few hours, so serve it shortly after making it or just stir again before serving.', 'Simple Guacamole. Good for gatherings, great for parties', 20, 1, 'https://www.jessicagavin.com/wp-content/uploads/2019/04/guacamole-6-1200.jpg'),
(637, 78, 'Sweet Almond Date Smoothie', '2021-10-17', 2, 'Combine all ingredients in blender. Blend until smooth.', 'Feel free to change some of the ingredient amounts, this is only for the really sweet tooths!', 20, 3, 'https://feelgoodfoodie.net/wp-content/uploads/2020/02/Date-Shake-4.jpg'),
(638, 42, 'Super Protein Salad', '2022-08-09', 1, 'Combine olive oil, vinegar, mustard, salt and pepper to taste. Toss with other ingredients in a bowl and serve.', 'The best way to make a salad is to make it interesting, and there\'s plenty of variety here for that!', 20, 3, 'https://i1.wp.com/www.thewholeingredient.com/wp-content/uploads/2015/01/IMG_3501-edit.jpg?resize=1200%2C800'),
(639, 52, 'The Shake', '2015-08-18', 2, 'Combine all ingredients in blender. Blend until smooth.', 'I make this when I need something fast and refreshing. It tastes delicious and feels really healthy! Perfect for breakfasts.', 30, 1, 'https://lemontreedwelling.com/wp-content/uploads/2014/02/Mango-Berry-Smoothie-1.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'to be hashed',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1.png',
  `Bio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`user_id`, `username`, `password`, `email`, `first_name`, `last_name`, `profile_url`, `Bio`) VALUES
(1, 'admin', '$2y$10$6luPHGi9H/We/ZAG7mGrc.685SFI0ZOZrM6H4tRMIrAhQUXC6AVi.', 'admin@manchester.ac.uk', 'Admin', 'Realperson', '1.png', 'Admin account for admin things.'),
(17, 'wanderingtowboats40', '$2y$10$kdAlKtaTwFpt5SLZ2l8CK.3Q4jhosKrbCl3dPdixTGgJ9KJh6QDq6', 'brodie.donnie@student.manchester.ac.uk', 'Brodie', 'Donnie', '1.png', 'Just a foodie trying to make good food'),
(24, 'drumbeatslurps75', '$2y$10$qKZQVpks1RQtwAuP0/rYK.c0et0nEvc.CA.pWHPKOXM99hMTWR0LK', 'chena.chadwick@student.manchester.ac.uk', 'Chena', 'Chadwick', '1.png', 'Just a foodie trying to make good food'),
(25, 'Unstablenessuruguayans', '$2y$10$Lfkej4WZbehSqWfaZuJpweHvYAvGMvSTdsyWIEO65viiX9LwXSKMq', 'tymon.danny@student.manchester.ac.uk', 'Tymon', 'Danny', '2.png', 'Just a foodie trying to make good food'),
(29, 'deesidegardening', '$2y$10$mDVXKA75VONgfPHBqY7xFOLuDrmbTuhg3PCEPATKv/WqyMnqA78sC', 'jill.shaterra@student.manchester.ac.uk', 'Jill', 'Shaterra', '2.png', 'I hope you enjoy my recipes!'),
(31, 'inuringbattleships28', '$2y$10$eirPUg121AZtqjU/eLH1RO0gkPnN/TFkOhEPZ76Bvp/khcSwpdnee', 'manu.kiersten@student.manchester.ac.uk', 'Manu', 'Kiersten', '2.png', 'I hope you enjoy my recipes!'),
(33, 'westmeathmegavitamin', '$2y$10$yy54brTyeqJB.QImwAhFNOUmafJ5BWkQc4reWCvW44PuUerAeIGo2', 'kalysta.vontrell@student.manchester.ac.uk', 'Kalysta', 'Vontrell', '3.png', 'I hope you enjoy my recipes!'),
(42, 'expendituresamplify70', '$2y$10$cxaZKD1i1L0M1TxUmGfEmuR6.RglMhRvIvi6QdPEK3.Q5wnFjsvxe', 'kamilla.jacqui@student.manchester.ac.uk', 'Kamilla', 'Jacqui', '3.png', 'I\'m a student who\'s trying to spice up their boring cooking'),
(50, 'freemasonbangle', '$2y$10$BBoXFAJk2oaNWMBJCPLaAei1WsRfZvulZEVHb70TDnNvecjQcbLK.', 'rayford.colm@student.manchester.ac.uk', 'Rayford', 'Colm', '3.png', 'I\'m a student who\'s trying to spice up their boring cooking'),
(52, 'Stunningbaffled', '$2y$10$LT/8Tafj72/JwvngSxXFoeGWjXxpqFTuKIbkmM81Wsy58o.WeTe2m', 'shikita.kalisa@student.manchester.ac.uk', 'Shikita', 'Kalisa', '4.png', 'I\'m a student who\'s trying to spice up their boring cooking'),
(54, 'practicabledegenerative32', '$2y$10$v77Zk.wR0o721jw8iDQKZeyhpKKkT/MvigBT88N9/yQ09dQbfAVpu', 'cheyanne.danh@student.manchester.ac.uk', 'Cheyanne', 'Danh', '4.png', 'Leveling up your cooking is so satisfying :)'),
(72, 'Chokerforfeiting', '$2y$10$hTxzhClPdgih5A5kffyrcOzcY2P/u8hLU/wnNsXtouf0m.SqyTfg.', 'pricsilla.girl@student.manchester.ac.uk', 'Pricsilla', 'Girl', '4.png', 'Leveling up your cooking is so satisfying :)'),
(78, 'Sourpussesdisplaces61', '$2y$10$ZttV8rYar2J.LZIOSlrnQOEyO/MWZi36vFYnhFN0ISdVaq624Z2EC', 'quinette.olusegun@student.manchester.ac.uk', 'Quinette', 'Olusegun', '5.png', 'Leveling up your cooking is so satisfying :)'),
(82, 'Springssubtending87', '$2y$10$zOWRpElxLs9xR1mDh.TVPOSf8bAvxcdQq8s4TcbB1esKskjKJg9kO', 'lanay.hashem@student.manchester.ac.uk', 'Lanay', 'Hashem', '5.png', 'Healthy food is good food. Atleast that\'s what I think'),
(84, 'ridiculingoarlock96', '$2y$10$R64EBpjOhzXq11ujGNGg5uKHj0TaP9t4yK4DPcDQx2ful/HBJO3wO', 'tahesha.eliott@student.manchester.ac.uk', 'Tahesha', 'Eliott', '5.png', 'Healthy food is good food. Atleast that\'s what I think'),
(96, 'sponsorspayed79', '$2y$10$qeKtmj2FaTtANPXuOFoaTeiS0goABfJ54r3vk17qmL.UC5iFxHoiS', 'keno.sherise@student.manchester.ac.uk', 'Keno', 'Sherise', '6.png', 'Healthy food is good food. Atleast that\'s what I think'),
(97, 'Vividlyskilfulness68', '$2y$10$dVWP5cy1cudKfuYrWDKH3.pOqbkCxd9dhQNOjaFH0PaU46NItbTLS', 'lacoya.demetreus@student.manchester.ac.uk', 'Lacoya', 'Demetreus', '6.png', 'Anyone else have as much of a sweet tooth as me?'),
(106, 'deathlessparliamentarians19', '$2y$10$GF0uE1BRRv/Cw.AmO.s5FuQWPn7Z2nN0YU/hMoN2PHU685LroiKZK', 'laurina.rosaelena@student.manchester.ac.uk', 'Laurina', 'Rosaelena', '7.png', 'Anyone else have as much of a sweet tooth as me?'),
(108, 'Crematingmarlines', '$2y$10$7to6QSc70HhcqTkPWtH9qOMqDmlYM0.2AUjrB1WYRGLUsqdUhBmVm', 'shanyn.danya@student.manchester.ac.uk', 'Shanyn', 'Danya', '7.png', 'Anyone else have as much of a sweet tooth as me?'),
(116, 'newuser', '$2y$10$ydLqSujOeEib73LcIvbQTu.Sjc97PY9SFEBeljx7DRP4PqlaMJJSq', 'newuser@gmail.com', 'Adi', 'Agar', '1.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CATEGORIES`
--
ALTER TABLE `CATEGORIES`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `COMMENTS`
--
ALTER TABLE `COMMENTS`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_COMMENTS_RECIPES` (`recipe_id`),
  ADD KEY `FK_COMMENTS_USERS` (`user_id`);

--
-- Indexes for table `INGREDIENTS`
--
ALTER TABLE `INGREDIENTS`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `FK_INGREDIENTS_CATEGORIES` (`category_id`);

--
-- Indexes for table `RATINGS`
--
ALTER TABLE `RATINGS`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `FK_RATINGS_USERS` (`user_id`),
  ADD KEY `FK_RATINGS_RECIPES` (`recipe_id`);

--
-- Indexes for table `RECIPEINGREDIENTS`
--
ALTER TABLE `RECIPEINGREDIENTS`
  ADD PRIMARY KEY (`recipe_ingredient_id`),
  ADD KEY `FK_RECIPEINGREDIENTS_INGREDIENTS` (`ingredient_id`),
  ADD KEY `FK_RECIPEINGREDIENTS_RECIPES` (`recipe_id`);

--
-- Indexes for table `RECIPES`
--
ALTER TABLE `RECIPES`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `FK_RECIPES_USERS` (`user_id`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CATEGORIES`
--
ALTER TABLE `CATEGORIES`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `COMMENTS`
--
ALTER TABLE `COMMENTS`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `INGREDIENTS`
--
ALTER TABLE `INGREDIENTS`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `RATINGS`
--
ALTER TABLE `RATINGS`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RECIPEINGREDIENTS`
--
ALTER TABLE `RECIPEINGREDIENTS`
  MODIFY `recipe_ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `RECIPES`
--
ALTER TABLE `RECIPES`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `COMMENTS`
--
ALTER TABLE `COMMENTS`
  ADD CONSTRAINT `FK_COMMENTS_RECIPES` FOREIGN KEY (`recipe_id`) REFERENCES `RECIPES` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_COMMENTS_USERS` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `INGREDIENTS`
--
ALTER TABLE `INGREDIENTS`
  ADD CONSTRAINT `FK_INGREDIENTS_CATEGORIES` FOREIGN KEY (`category_id`) REFERENCES `CATEGORIES` (`category_id`) ON UPDATE CASCADE;

--
-- Constraints for table `RATINGS`
--
ALTER TABLE `RATINGS`
  ADD CONSTRAINT `FK_RATINGS_RECIPES` FOREIGN KEY (`recipe_id`) REFERENCES `RECIPES` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATINGS_USERS` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `RECIPEINGREDIENTS`
--
ALTER TABLE `RECIPEINGREDIENTS`
  ADD CONSTRAINT `FK_RECIPEINGREDIENTS_INGREDIENTS` FOREIGN KEY (`ingredient_id`) REFERENCES `INGREDIENTS` (`ingredient_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECIPEINGREDIENTS_RECIPES` FOREIGN KEY (`recipe_id`) REFERENCES `RECIPES` (`recipe_id`) ON UPDATE CASCADE;

--
-- Constraints for table `RECIPES`
--
ALTER TABLE `RECIPES`
  ADD CONSTRAINT `FK_RECIPES_USERS` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

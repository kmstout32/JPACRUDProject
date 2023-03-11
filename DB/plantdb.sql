-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema plantsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `plantsdb` ;

-- -----------------------------------------------------
-- Schema plantsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `plantsdb` DEFAULT CHARACTER SET utf8 ;
USE `plantsdb` ;

-- -----------------------------------------------------
-- Table `plant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plant` ;

CREATE TABLE IF NOT EXISTS `plant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(3000) NULL,
  `light` VARCHAR(45) NULL,
  `origin` VARCHAR(45) NULL COMMENT '	',
  `price` DECIMAL(5,2) NOT NULL,
  `size` DECIMAL(5,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = DEFAULT;

SET SQL_MODE = '';
DROP USER IF EXISTS plant@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'plant'@'localhost' IDENTIFIED BY 'plant';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'plant'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantsdb`;
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (1, 'Devil\'s Ivy', 'an evergreen plant with thick, waxy, green, heart-shaped leaves with splashes of yellow', '', NULL, NULL, 15.76, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (2, 'Snake Plant', 'Leaves of the Snake Plant grow thick and wide, tapering into sword-like points. Foliage edges are striped in a luscious creamy yellow, which accents green-silver ripples. Mother in Laws Tongue House Plant looks great with basket weave or ceramic pots, by itself or with other potted plants', '', 'Partial Sun', NULL, 16.99, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (3, 'Weeping Fig Tree', 'Ficus benjaminia is a very popular houseplant because of its tolerance of poor growing conditions. It performs best in bright sunny locations but will also survive in shade. It is very sensitive to light so if the plant is moved, expect it to drop leaves and produce new ones that are accustomed to the new light conditions.', NULL, NULL, NULL, 17.99, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (4, 'Spider Plant', 'The spider plant with more white in the leaves and white flowers on long stems that seem to dance in the air. Spider Plants make excellent house plants or indoor plants as they are not only such easy-growing plants but have beneficial properties in cleansing the air of pollutants, especially formaldehyde and carbon monoxide.', '', 'Full sun', NULL, 25.99, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (5, 'Croton', 'eaturing leaves dramatically shaded in golden, orange, red, and purple hues, it\'s perfect for making any indoor space feel like you\'re deep in a tropical rainforest.', NULL, NULL, NULL, 14.99, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (6, 'Figue Ginseng', 'The Ficus Ginseng (Ficus Microcarpa \'Ginseng\') is the perfect plant to start your bonsai journey into the tranquility of this spiritual practice. The dense, glossy, dark green foliage is perfect for shaping as they sit atop a wide trunk with exposed roots, extending their aesthetics. They are an ideal addition to a relaxing environment!', '', NULL, NULL, 43.00, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (7, 'ZZ Plant', 'The ZZ plant is an excellent low-maintenance indoor plant (trust us, they are difficult to kill). You can place them almost anywhere, and they will grow, but they do appreciate a little bit of light now and then. Wherever they go, they are a tasteful and classy addition to your Green Space.', '', NULL, NULL, 14.99, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (8, 'Money Tree', 'Probably the most popular Feng Shui plant, the money tree is said to bring good luck and fortune wherever they go. They are also super easy to care for and can bounce back if you neglect them a little. This tropical indoor plant helps to purify the air and will thrive best in sunny spaces. This bonsai version makes a great starter plant and is a fantastic housewarming gift.', '', NULL, NULL, 26.00, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (9, 'White Stripe Dragon Tree (Dracaena)', 'Dracaena Warneckii is as easy to care for as they come. Their dramatic form makes for an interesting floor or desk plant in your Green Space. Although tropical by nature, they adapt beautifully to home and indoor conditions with little care. The Young White Bird specimens are full of upright leaves and develop canes as they grow. ', '', NULL, NULL, 35.00, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (10, 'Tillandsia Houston Air Plant ', 'This little beauty gets bigger than most. Their striking silverish tinted leaves will take on a purple tint during the bloom of their pink and white petals. The best part is that the leaves start to curl as they mature and look frozen in a slight breeze, giving them a graceful look! Water 2-3 times a week and set in bright, indirect light to care for this one. ', '', NULL, NULL, 14.00, NULL);
INSERT INTO `plant` (`id`, `name`, `description`, `image_url`, `light`, `origin`, `price`, `size`) VALUES (11, 'sdafsad', 'hiutf', NULL, NULL, NULL, 50.00, NULL);

COMMIT;


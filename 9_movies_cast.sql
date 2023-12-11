USE movies;

DROP TABLE IF EXISTS movies_cast;

CREATE TABLE movies_cast(
  id INT,
  act_id INT UNSIGNED NOT NULL,
  mov_id INT UNSIGNED NOT NULL,
  role CHAR(30)
);

ALTER TABLE movies_cast
  ADD
    CONSTRAINT pk_movies_cast_id PRIMARY KEY (id),
    MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE movies_cast
  ADD CONSTRAINT fk_mc_act_id FOREIGN KEY(act_id)
  REFERENCES actors(id);

ALTER TABLE movies_cast
  ADD
    CONSTRAINT fk_mc_mov_id FOREIGN KEY(mov_id) REFERENCES movies(id);

DESCRIBE movies_cast;

INSERT INTO movies_cast(act_id, mov_id, role)
VALUES
(101, 	901, 	'John Scottie Ferguson'),
(102, 	902, 	'Miss Giddens'),
(103, 	903, 	'T.E. Lawrence'),
(104, 	904, 	'Michael'),
(105, 	905, 	'Antonio Salieri'),
(106, 	906, 	'Rick Deckard'),
(107, 	907, 	'Alice Harford'),
(108, 	908, 	'McManus'),
(110, 	910, 	'Eddie Adams'),
(111, 	911, 	'Alvy Singer'),
(112, 	912, 	'San'),
(113, 	913, 	'Andy Dufresne'),
(114, 	914, 	'Lester Burnham'),
(115, 	915, 	'Rose DeWitt Bukater'),
(116, 	916, 	'Sean Maguire'),
(117, 	917, 	'Ed'),
(118, 	918, 	'Renton'),
(120, 	920, 	'Elizabeth Darko'),
(121, 	921, 	'Older Jamal'),
(122, 	922, 	'Ripley'),
(114, 	923, 	'Bobby Darin'),
(109, 	909, 	'J.J. Gittes'),
(119, 	919, 	'Alfred Borden'); 
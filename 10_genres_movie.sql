USE movies;

DROP TABLE IF EXISTS genres_movie;

CREATE TABLE genres_movie(
  id INT,
  mov_id INT(11) UNSIGNED NOT NULL,
  gen_id INT(11) UNSIGNED NOT NULL
);

ALTER TABLE genres_movie
  ADD
    CONSTRAINT pk_genres_movie_id PRIMARY KEY (id),
    MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE genres_movie
  ADD
    CONSTRAINT fk_gm_mov_id FOREIGN KEY(mov_id) REFERENCES movies(id);

ALTER TABLE genres_movie
  ADD
    CONSTRAINT fk_gm_gen_id FOREIGN KEY(gen_id) REFERENCES genres(id);
DESCRIBE genres_movie;

INSERT INTO genres_movie(mov_id, gen_id)
VALUES
(922, 	1001),
(917, 	1002),
(903, 	1002),
(912, 	1003),
(911, 	1005),
(908, 	1006),
(913, 	1006),
(926, 	1007),
(928, 	1007),
(918, 	1007),
(921, 	1007),
(902, 	1008),
(923, 	1009),
(907, 	1010),
(927, 	1010),
(901, 	1010),
(914, 	1011),
(906, 	1012),
(904, 	1013); 
USE movies;

DROP TABLE IF EXISTS directions_movie;

CREATE TABLE directions_movie(
  id INT,
  dir_id INT UNSIGNED NOT NULL,
  mov_id INT UNSIGNED NOT NULL
);

ALTER TABLE directions_movie
  ADD CONSTRAINT pk_dm_id PRIMARY KEY (id),
  MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE directions_movie
  ADD
    CONSTRAINT fk_dm_dir_id FOREIGN KEY(dir_id) REFERENCES directors(id);

ALTER TABLE directions_movie
  ADD
    CONSTRAINT fk_dm_mov_id FOREIGN KEY(mov_id) REFERENCES movies(id);

DESCRIBE directions_movie;

INSERT INTO directions_movie(dir_id, mov_id)
VALUES
(201,	  901),
(202, 	902),
(203, 	903),
(204, 	904),
(205, 	905),
(206, 	906),
(207, 	907),
(208, 	908),
(209, 	909),
(210, 	910),
(211, 	911),
(212, 	912),
(213, 	913),
(214, 	914),
(215, 	915),
(216, 	916),
(217, 	917),
(218, 	918),
(219, 	919),
(220, 	920),
(218, 	921),
(215, 	922),
(221, 	923);
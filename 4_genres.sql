USE movies;

DROP TABLE IF EXISTS genres;

CREATE TABLE genres(
  id INT,
  title VARCHAR(20)
);

ALTER TABLE genres
  ADD CONSTRAINT pk_genres_id PRIMARY KEY(id),
  MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;


DESCRIBE genres;

INSERT INTO genres(id, title)
  VALUES
    (1001, 	'Action'),
    (1002, 	'Adventure'),
    (1003, 	'Animation'),
    (1004, 	'Biography'),
    (1005, 	'Comedy'),
    (1006, 	'Crime'),
    (1007, 	'Drama'),
    (1008, 	'Horror'),
    (1009, 	'Music'),
    (1010, 	'Mystery'),
    (1011, 	'Romance'),
    (1012, 	'Thriller'),
    (1013, 	'War');
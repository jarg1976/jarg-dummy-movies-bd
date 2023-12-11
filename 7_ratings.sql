USE movies;
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings(
  id INT,
  mov_id INT UNSIGNED NOT NULL,
  rev_id INT UNSIGNED NOT NULL,
  rev_stars INT UNSIGNED NULL,
  num_o_ratings INT UNSIGNED NULL
);

ALTER TABLE ratings
ADD
  CONSTRAINT pk_ratings_id PRIMARY KEY (id),
  MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE ratings
  ADD
    CONSTRAINT fk_ratings_mov_id FOREIGN KEY(mov_id) REFERENCES movies(id);

ALTER TABLE ratings
  ADD
    CONSTRAINT fk_ratings_rev_id FOREIGN KEY(rev_id) REFERENCES reviewers(id);

DESCRIBE ratings;

INSERT INTO ratings(mov_id, rev_id, rev_stars, num_o_ratings)
VALUES
(901, 	9001, 	8.40, 	  263575),
(902, 	9002, 	7.90, 	  20207),
(903, 	9003, 	8.30, 	  202778),
(906, 	9005, 	8.20, 	  484746),
(924, 	9006, 	7.30, 	  NULL),
(908, 	9007, 	8.60, 	  779489),
(909, 	9008, 	NULL,  	  227235),
(910, 	9009, 	3.00, 	  195961),
(911, 	9010, 	8.10, 	  203875),
(912, 	9011, 	8.40, 	  NULL),
(914, 	9013, 	7.00, 	  862618),
(915, 	9001, 	7.70, 	  830095),
(916, 	9014, 	4.00, 	  642132),
(925, 	9015, 	7.70, 	  81328),
(918, 	9016, 	NULL,  	  580301),
(920, 	9017, 	8.10, 	  609451),
(921, 	9018, 	8.00, 	  667758),
(922, 	9019, 	8.40, 	  511613),
(923, 	9020, 	6.70, 	  13091 );
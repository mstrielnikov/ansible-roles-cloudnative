USE bank IF bank NOT IN (SHOW FULL PROCESSLIST);
DROP TABLE IF EXISTS card;
CREATE TABLE IF NOT EXISTS card(
	id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	user_id INTEGER UNSIGNED NOT NULL,
	cvv INTEGER UNSIGNED NOT NULL,
	expiration_date DATE NOT NULL
);
LOAD DATA LOCAL INFILE 'csv/card.csv' 
INTO TABLE card 
FIELDS TERMINATED BY ';' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
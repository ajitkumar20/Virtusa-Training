CREATE TABLE Product(
    id INT PRIMARY KEY,
	name VARCHAR(30),
	price INT,
	location VARCHAR(30)
);

CREATE TABLE manufacturer(
    id INT,
	company_name VARCHAR(30),
	product_id VARCHAR(5),
	address VARCHAR(20),
	FOREIGN KEY(id) REFERENCES Product(id)
);

INSERT INTO Product VALUES(001, 'Ajit', 400, 'uk');
INSERT INTO Product VALUES(002, 'Rahul', 800, 'usa');
INSERT INTO Product VALUES(003, 'Jaki', 450, 'aus');
INSERT INTO Product VALUES(004, 'Sandeep', 600, 'eng');
INSERT INTO Product VALUES(005, 'Raama', 500, 'nz');

INSERT INTO manufacturer VALUES(002, 'Virtusa', 'C1', 'london');
INSERT INTO manufacturer VALUES(003, 'media.net', 'C2', 'las vegas');
INSERT INTO manufacturer VALUES(003, 'Cisoco', 'C3', 'moscow');
INSERT INTO manufacturer VALUES(001, 'DeShaw', 'C4', 'new york city');
INSERT INTO manufacturer VALUES(004, 'Nielson iq', 'C5', 'new delhi');

SELECT company_name FROM Product, manufacturer
WHERE Product.id = manufacturer.id
AND product_id = 'C2';
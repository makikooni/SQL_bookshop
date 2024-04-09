DROP TABLE IF EXISTS books;


CREATE TABLE books (
    book_id INT PRIMARY KEY NOT NULL, 
    title VARCHAR(80) NOT NULL,
    price_in_pence INT NOT NULL,
    quantity_in_stock INT DEFAULT 0 NOT NULL,
    release_date DATE,
    is_fiction BOOLEAN
    );


INSERT INTO books
(book_id, title, price_in_pence, quantity_in_stock, release_date, is_fiction)
VALUES
  (1,'The Hitchhiker''s Guide to the Galaxy', 899, 560, '1997-10-12', true),
(2,'The Little Prince',699,1020,'1943-04-06',true ),
(3,'The Tale of Peter Rabbit',599,1000,'1902-10-01',true),
(4,'Emma', 522,390,'1815-12-23',true),
(5,'Nineteen Eighty-Four: A Novel',799,420,'1949-06-08',true),
(6,'The Handmaid''s Tale',899,10,'1985-08-01', true),
(7,'The War of the Worlds',250,17,'1897-04-01',true),
(8,'Captain Corelli''s Mandolin',999,0,'1995-08-29',true),
(9,'A Brief History of Time',825,0,'1988-04-01',false),
(10,'Pride and Prejudice',699,4,'1813-01-28',true);


SELECT *
FROM books
WHERE is_fiction IS FALSE;

SELECT *
FROM books
WHERE release_date BETWEEN '1800-01-01' AND '1999-12-31';

SELECT *
FROM books
WHERE quantity_in_stock >= 1;

UPDATE books
SET quantity_in_stock = 0
WHERE book_id = 4;

DELETE FROM BOOKS
WHERE quantity_in_stock = 0;

DROP TABLE IF EXISTS authors;

CREATE TABLE authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(200),
  fun_fact TEXT
);

INSERT INTO authors (
author_id, author_name, fun_fact)
VALUES
(1,'Dan Brown','Favourite colour is not brown.'),
(2,'Antoine de Saint-Exupéry','He was a successful commercial pilot before World War II, working airmail routes in Europe, Africa, and South America.'),
(3,'Douglas Adams','He made two appearances in Monty Python''s Flying Circus.'),
(4,'Stephen Hawking','Doctors told him he wouldn''t live past his early 20s.'),
(5,'Eric Carle','When he was a young boy, Carle had a dream that he would build a bridge from Germany to America.'),
(6,'J.D. Salinger','The Catcher in the Rye was the only novel that J.D. Salinger published during his lifetime - not bad for a first try!'),
(7,'Beatrix Potter','Between 1881 and 1897 Potter kept a journal in which she jotted down her private thoughts in a secret code . This code was so fiendishly difficult it was not cracked and translated until 1958.'),
(8,'C.S.Lewis','Lewis set up a charitable trust to give away whatever money he received from his books.'),
(9,'Roald Dahl','During World War II he passed intelligence to MI6 from Washington.'),
(10,'Frank Herbert','While conversing with fungi expert Paul Stamets, Herbert revealed that the world of Dune was influenced by the lifecycle of mushrooms, with his imagination being helped along by a more "magic" variety.'),
(11,'Louis de Bernières','De Bernières is an avid musician who plays flute, mandolin, clarinet and guitar.'),
(12,'H.G.Wells','In 1914 H.G. Wells published a novel titled The World Set Free. In this book he described a weapon that was eerily similar to the first atomic bomb unleashed on the Japanese cities of Hiroshima and Nagasaki in 1945.'),
(13,'George Orwell','Orwell intentionally got himself arrested for being "drunk and incapable".'),
(14,'Jane Austen','The author of her first novel, Sense and Sensibility, was simply "A Lady", and her later works like Pride and Prejudice were credited to "the Author of Sense and Sensibility". She wasn''t named as the author of her novels until after her death!'),
(15,'Margaret Atwood','Atwood was the first author to contribute to The Future Library Project, which will take one writer''s contribution each year for one hundred years to be printed in the year 2114.');



ALTER TABLE books
ADD COLUMN author_id INT;

ALTER TABLE books
ADD COLUMN author_name VARCHAR (200);

UPDATE books
SET author_id = 3
WHERE book_id = 1;

UPDATE books
SET author_id = 
    CASE 
        WHEN book_id = 2 THEN 2
        WHEN book_id = 4 THEN 14
        WHEN book_id = 3 THEN 7
        WHEN book_id = 5 THEN 13
        WHEN book_id = 6 THEN 15
        WHEN book_id = 7 THEN 12
        WHEN book_id = 8 THEN 11
        WHEN book_id = 9 THEN 4
        WHEN book_id = 10 THEN 14
        ELSE author_id 
    END;

SELECT *
FROM books b
INNER JOIN authors a
ON b.author_id = a.author_id
ORDER BY book_id ASC;

CREATE TABLE genres (
genre_id INT PRIMARY KEY NOT NULL,
genre_name VARCHAR(50)
);

INSERT INTO genres (genre_id, genre_name)
VALUES
(1, 'science fiction'),
(2, 'children''s'),
(3, 'romance'),
(4, 'fantasy'),
(5, 'dystopian'),
(6, 'science'),
(7, 'adventure'),
(8, 'classics');
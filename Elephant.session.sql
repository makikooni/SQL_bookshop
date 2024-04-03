DROP TABLE IF EXISTS BOOKS;

CREATE TABLE BOOKS (
    book_id INT PRIMARY KEY NOT NULL, 
    title VARCHAR(80),
    price_in_pence INT NOT NULL,
    quantity_in_stock INT NOT NULL,
    release_date DATE,
    is_fiction BOOLEAN);


INSERT INTO BOOKS
(book_id, title, price_in_pence, quantity_in_stock, release_date, is_fiction)
VALUES
  (1, 'The Hitchhiker''s Guide to the Galaxy', 1995, 5, '1979-09-21', TRUE),
  (2, 'Pride & Prejudice', 1295, 10, '1813-01-28', FALSE),
  (3, 'The Lord of the Rings: The Fellowship of the Ring', 2499, 3, '1954-07-29', FALSE),
  (4, 'To Kill a Mockingbird', 1495, 7, '1960-07-11', FALSE),
  (5, 'One Hundred Years of Solitude', 1795, 8, '1967-06-05', FALSE),
  (6, 'Frankenstein', 1699, 2, '1818-01-01', FALSE),
  (7, 'Dune', 1895, 4, '1965-08-01', FALSE),
  (8, 'The Handmaid''s Tale', 1399, 9, '1985-04-30', FALSE),
  (9, 'The Great Gatsby', 1195, 6, '1925-04-10', FALSE),
  (10, 'Moby Dick', 2199, 1, '1851-11-14', FALSE);

SELECT *
FROM books
WHERE is_fiction IS FALSE;


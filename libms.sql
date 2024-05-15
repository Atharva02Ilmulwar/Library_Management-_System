-- Create Authors table

CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100)
);

-- Insert sample data into Authors table

INSERT INTO Authors (author_id, author_name)
VALUES
    (1, 'Stephen King'),
    (2, 'J.K. Rowling'),
    (3, 'George Orwell'),
    (4, 'Harper Lee'),
    (5, 'J.R.R. Tolkien');

-- Create Books table

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    genre VARCHAR(100),
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Insert sample data into Books table

INSERT INTO Books (title, author_id, genre, publication_year)
VALUES
    ('The Shining', 1, 'Horror', 1977),
    ('Harry Potter and the Philosopher''s Stone', 2, 'Fantasy', 1997),
    ('1984', 3, 'Dystopian', 1949),
    ('To Kill a Mockingbird', 4, 'Fiction', 1960),
    ('The Hobbit', 5, 'Fantasy', 1937),
    ('Pet Sematary', 1, 'Horror', 1983),
    ('Harry Potter and the Chamber of Secrets', 2, 'Fantasy', 1998),
    ('Animal Farm', 3, 'Dystopian', 1945),
    ('Go Set a Watchman', 4, 'Fiction', 2015),
    ('The Lord of the Rings', 5, 'Fantasy', 1954),
    ('It', 1, 'Horror', 1986),
    ('Harry Potter and the Prisoner of Azkaban', 2, 'Fantasy', 1999),
    ('Nineteen Eighty-Four', 3, 'Dystopian', 1949),
    ('To Kill a Mockingbird: A Graphic Novel', 4, 'Fiction', 2018),
    ('The Silmarillion', 5, 'Fantasy', 1977),
    ('The Stand', 1, 'Horror', 1978),
    ('Harry Potter and the Goblet of Fire', 2, 'Fantasy', 2000),
    ('Animal Farm: A Fairy Story', 3, 'Dystopian', 1945),
    ('Go Set a Watchman: A Novel', 4, 'Fiction', 2015),
    ('The Children of Húrin', 5, 'Fantasy', 2007);

-- Create a Date Table

CREATE TABLE Dates (
    date_id SERIAL PRIMARY KEY,
    date_value DATE
);

-- Insert sample data into Dates table

INSERT INTO Dates (date_value)
SELECT '2023-01-01'::DATE + (n || ' day')::INTERVAL
FROM generate_series(0, 149) AS s(n);

-- Display Dates from 1st Jan to 30th May 2024

SELECT *
FROM Dates
WHERE date_value BETWEEN '2023-01-01' AND '2024-05-30';

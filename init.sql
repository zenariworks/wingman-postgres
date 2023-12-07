-- Create Authors Table
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

-- Create Genres Table
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create Books Table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    published_year INT,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Insert Authors
INSERT INTO authors (name, nationality) VALUES 
('George Orwell', 'British'),
('J.K. Rowling', 'British'),
('Gabriel Garcia Marquez', 'Colombian'),
('Haruki Murakami', 'Japanese'),
('Jane Austen', 'British');

-- Insert Genres
INSERT INTO genres (name) VALUES 
('Dystopian'),
('Fantasy'),
('Magical Realism'),
('Fiction'),
('Classic');

-- Insert Books
INSERT INTO books (title, published_year, author_id, genre_id) VALUES 
('1984', 1949, (SELECT author_id FROM authors WHERE name = 'George Orwell'), (SELECT genre_id FROM genres WHERE name = 'Dystopian')),
('Harry Potter and the Philosopher''s Stone', 1997, (SELECT author_id FROM authors WHERE name = 'J.K. Rowling'), (SELECT genre_id FROM genres WHERE name = 'Fantasy')),
('One Hundred Years of Solitude', 1967, (SELECT author_id FROM authors WHERE name = 'Gabriel Garcia Marquez'), (SELECT genre_id FROM genres WHERE name = 'Magical Realism')),
('Kafka on the Shore', 2002, (SELECT author_id FROM authors WHERE name = 'Haruki Murakami'), (SELECT genre_id FROM genres WHERE name = 'Fiction')),
('Pride and Prejudice', 1813, (SELECT author_id FROM authors WHERE name = 'Jane Austen'), (SELECT genre_id FROM genres WHERE name = 'Classic'));

-- Sample Query to Display Books with Authors and Genres
SELECT b.title, b.published_year, a.name AS author_name, g.name AS genre_name
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN genres g ON b.genre_id = g.genre_id;

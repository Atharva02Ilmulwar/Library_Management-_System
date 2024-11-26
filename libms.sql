Database Creation


CREATE DATABASE LibraryManagement;
USE LibraryManagement;
Table Creation


-- Table for Books
    
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    PublishedYear INT,
    Quantity INT DEFAULT 1
);

-- Table for Members

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    PhoneNumber VARCHAR(15),
    MembershipDate DATE DEFAULT CURRENT_DATE
);

-- Table for Issued Books

CREATE TABLE IssuedBooks (
    IssueID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    IssueDate DATE DEFAULT CURRENT_DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

Sample Data Insertion

-- Insert data into Books
INSERT INTO Books (Title, Author, Genre, PublishedYear, Quantity)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 5),
('1984', 'George Orwell', 'Dystopian', 1949, 3),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 4);

-- Insert data into Members

INSERT INTO Members (Name, Email, PhoneNumber)
VALUES 
('John Doe', 'johndoe@example.com', '1234567890'),
('Jane Smith', 'janesmith@example.com', '0987654321');

-- Insert data into IssuedBooks

INSERT INTO IssuedBooks (BookID, MemberID, ReturnDate)
VALUES 
(1, 1, '2024-12-01'),
(2, 2, '2024-12-05');

Query Examples
List all books available in the library

SELECT * FROM Books;

Find all members who have borrowed books

SELECT Members.Name, Books.Title, IssuedBooks.IssueDate, IssuedBooks.ReturnDate
FROM IssuedBooks
JOIN Members ON IssuedBooks.MemberID = Members.MemberID
JOIN Books ON IssuedBooks.BookID = Books.BookID;

Check book availability

SELECT Title, Quantity FROM Books WHERE Quantity > 0;
Update book quantity after issue

UPDATE Books SET Quantity = Quantity - 1 WHERE BookID = 1;
Return a book

UPDATE Books SET Quantity = Quantity + 1 WHERE BookID = 1;
DELETE FROM IssuedBooks WHERE IssueID = 1;

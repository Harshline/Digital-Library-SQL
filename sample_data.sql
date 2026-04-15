INSERT INTO Books (BookID, Title, Author, Category) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 'Science'),
(3, 'Sapiens', 'Yuval Noah Harari', 'History'),
(4, 'Clean Code', 'Robert C. Martin', 'Technology'),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction');

INSERT INTO Students (StudentID, Name, Department) VALUES
(1, 'Alice', 'Computer Science'),
(2, 'Bob', 'Information Technology'),
(3, 'Charlie', 'Electronics'),
(4, 'David', 'Mechanical'),
(5, 'Eva', 'Civil');

INSERT INTO IssuedBooks (IssueID, BookID, StudentID, IssueDate, ReturnDate) VALUES
(1, 1, 1, '2026-03-01', NULL),           
(2, 2, 2, '2026-03-20', '2026-03-25'),   
(3, 3, 3, '2026-03-10', NULL),           
(4, 4, 1, '2026-04-01', NULL),           
(5, 5, 4, '2025-01-01', '2025-01-10');   
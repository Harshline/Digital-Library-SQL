-- 2. Overdue Logic
SELECT s.StudentID, s.Name, b.Title, i.IssueDate
FROM IssuedBooks i
JOIN Students s ON i.StudentID = s.StudentID
JOIN Books b ON i.BookID = b.BookID
WHERE i.ReturnDate IS NULL
AND i.IssueDate < CURRENT_DATE - INTERVAL 14 DAY;


-- 2. Popularity Index 
SELECT b.Category, COUNT(*) AS BorrowCount
FROM IssuedBooks i
JOIN Books b ON i.BookID = b.BookID
GROUP BY b.Category
ORDER BY BorrowCount DESC;


-- 3. Data Cleanup 
DELETE FROM Students
WHERE StudentID NOT IN (
    SELECT DISTINCT StudentID
    FROM IssuedBooks
    WHERE IssueDate >= CURRENT_DATE - INTERVAL 3 YEAR
);
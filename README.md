# 📚 Digital Library Audit System

## Project Overview
This project is a SQL-based system designed to manage and analyze a digital library database for a community college. It helps track book loans, identify overdue returns, analyze borrowing trends, and maintain clean student records.

---

## Objectives
- Track issued and returned books
- Identify overdue books (not returned within 14 days)
- Analyze most popular book categories
- Remove inactive student records (no activity for 3+ years)

---

## Database Design

### Tables Used:
1. **Books**
   - BookID (Primary Key)
   - Title
   - Author
   - Category

2. **Students**
   - StudentID (Primary Key)
   - Name
   - Department

3. **IssuedBooks**
   - IssueID (Primary Key)
   - BookID (Foreign Key)
   - StudentID (Foreign Key)
   - IssueDate
   - ReturnDate

---

## Features Implemented

### 1. Overdue Book Detection
Identifies students who have not returned books within 14 days.

### 2. Popularity Analysis
Finds the most borrowed book categories using aggregation.

### 3. Data Cleanup
Removes inactive students who have not borrowed books in the last 3 years.

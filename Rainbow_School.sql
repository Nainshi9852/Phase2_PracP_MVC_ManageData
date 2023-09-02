CREATE DATABASE Rainbow_SchoolDb
USE Rainbow_SchoolDb

-- Create the Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(100) NOT NULL
)

-- Create the Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(100) NOT NULL
)

-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    ClassID INT FOREIGN KEY REFERENCES Classes,
    SubjectID INT FOREIGN KEY REFERENCES Subjects
)

-- Insert data into Subjects table
INSERT INTO Subjects VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History'),
    (4, 'English'),
    (5, 'Physical Education');

-- Insert data into Classes table
INSERT INTO Classes VALUES
    (101, 'Class 1'),
    (102, 'Class 2'),
    (103, 'Class 3'),
    (104, 'Class 4'),
    (105, 'Class 5');

-- Insert data into Students table
INSERT INTO Students VALUES
    (1001, 'John', 'Doe', '2005-01-15', 101, 1),
    (1002, 'Jane', 'Smith', '2006-03-22', 102, 2),
    (1003, 'Michael', 'Johnson', '2004-07-10', 101, 3),
    (1004, 'Emily', 'Brown', '2007-09-05', 103, 1),
    (1005, 'William', 'Davis', '2005-11-18', 102, 4);

	select * from Subjects
	select * from Students
	select * from Classes
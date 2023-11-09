Create Database StudentData
Go


CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Gender NVARCHAR(10),
    ClassID INT,
    CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);


CREATE INDEX IX_Students_ClassID ON Students (ClassID);


CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY(1,1),
    SubjectName NVARCHAR(100)
);


CREATE TABLE Classes (
    ClassID INT PRIMARY KEY IDENTITY(1,1),
    ClassName NVARCHAR(50)
);
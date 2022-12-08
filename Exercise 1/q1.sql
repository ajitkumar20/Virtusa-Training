CREATE TABLE Subject(
       id VARCHAR(10) PRIMARY KEY,
	   rollno INT,
	   subname VARCHAR(20),
	   marks INT
);

CREATE TABLE Student(
      id VARCHAR(10),
	  rollno INT,
	  sname VARCHAR(20),
	  address VARCHAR(50),
	  FOREIGN KEY(id) REFERENCES Subject(id)
);

INSERT INTO Subject VALUES('C1', 101, 'ICP', 80);
INSERT INTO Subject VALUES('C2', 102, 'Calculus', 90);
INSERT INTO Subject VALUES('C3', 103, 'Data Mining', 50);
INSERT INTO Subject VALUES('C4', 104, 'Python', 70);
INSERT INTO Subject VALUES('C5', 105, 'Java', 60);


INSERT INTO Student VALUES('C3', 103, 'Jaki', 'jajpur');
INSERT INTO Student VALUES('C4', 104, 'Ajit', 'patna');
INSERT INTO Student VALUES('C4', 104, 'Rahul', 'kolkata');
INSERT INTO Student VALUES('C1', 101, 'Sandeep', 'jamshedpur');

SELECT subname, COUNT(id) AS 'Total Students' FROM Subject
WHERE subname = 'Python'
GROUP BY subname;

SELECT SUM(marks) AS TotMarks FROM Subject, Student
WHERE Subject.id = Student.id
AND sname = 'Ajit';
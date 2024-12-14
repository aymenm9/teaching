-- Get all students in a specific class
SELECT Name 
FROM Student 
WHERE Class_ID = (SELECT id FROM Class WHERE Class_Name = 'Group A');

-- Find all courses taught by a specific teacher
SELECT Course_Name
FROM Course 
WHERE id IN (SELECT Course_ID FROM Teaching WHERE Teacher_ID = 1);

-- Get the marks of all students for a specific course
SELECT Name, Mark
FROM Student 
WHERE id IN (SELECT Student_ID FROM Mark WHERE Course_ID = (SELECT id FROM Course WHERE Course_Name = 'Math 101'));

-- Get all courses taught to a specific class
SELECT Course_Name
FROM Course 
WHERE id IN (SELECT Course_ID FROM Teaching WHERE Class_ID = (SELECT id FROM Class WHERE Class_Name = 'Group A'));

-- Get the teacher(s) for a specific course
SELECT Name
FROM Teacher
WHERE id IN (SELECT Teacher_ID FROM Teaching WHERE Course_ID = 3);

-- Get students who received marks greater than a specific value for a course
SELECT Name, Mark
FROM Student 
WHERE id IN (SELECT Student_ID FROM Mark WHERE Course_ID = (SELECT id FROM Course WHERE Course_Name = 'Math 101') AND Mark > 17);


-- List all classes with the number of students in each class
SELECT Class_Name, 
       (SELECT COUNT(*) FROM Student WHERE Class_ID = Class.id) AS Student_Count
FROM Class;

-- Get students along with their marks for each course
SELECT Name, 
       (SELECT Mark FROM Mark WHERE Student_ID = Student.id) AS Mark,
       (SELECT Course_Name FROM Course WHERE id = (SELECT Course_ID FROM Mark WHERE Student_ID = Student.id)) AS Course_Name
FROM Student;

-- Get the average marks for each student
SELECT Name, 
       (SELECT AVG(Mark) FROM Mark WHERE Student_ID = Student.id) AS Average_Mark
FROM Student;

-- Find all teachers who teach a specific class

SELECT Name
FROM Teacher
WHERE id IN (SELECT Teacher_ID FROM Teaching WHERE Class_ID = (SELECT id FROM Class WHERE Class_Name = 'Group A'));

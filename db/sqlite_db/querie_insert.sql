
INSERT INTO Teacher (Name) VALUES ('John Doe');
INSERT INTO Teacher (Name) VALUES ('Jane Smith');


INSERT INTO Course (Course_Name) VALUES ('Math 101');
INSERT INTO Course (Course_Name) VALUES ('cs 101');
INSERT INTO Course (Course_Name) VALUES ('cs 50');

INSERT INTO Class (Class_Name) VALUES ('Group A');
INSERT INTO Class (Class_Name) VALUES ('Group B');


INSERT INTO Student (Name, Class_ID) VALUES ('Alice', 1);
INSERT INTO Student (Name, Class_ID) VALUES ('Bob', 1); 
INSERT INTO Student (Name, Class_ID) VALUES ('Charlie', 2);  
INSERT INTO Student (Name, Class_ID) VALUES ('David', 2); 

INSERT INTO Teaching (Teacher_ID, Class_ID, Course_ID) VALUES (1, 1, 1);
INSERT INTO Teaching (Teacher_ID, Class_ID, Course_ID) VALUES (1, 2, 2);
INSERT INTO Teaching (Teacher_ID, Class_ID, Course_ID) VALUES (2, 2, 1);
INSERT INTO Teaching (Teacher_ID, Class_ID, Course_ID) VALUES (2, 1, 3);

INSERT INTO Mark (Student_ID, Course_ID, Mark) VALUES (1, 1, 19.5);
INSERT INTO Mark (Student_ID, Course_ID, Mark) VALUES (1, 2, 15);
INSERT INTO Mark (Student_ID, Course_ID, Mark) VALUES (2, 1, 18);
INSERT INTO Mark (Student_ID, Course_ID, Mark) VALUES (3, 1, 16);  
INSERT INTO Mark (Student_ID, Course_ID, Mark) VALUES (4, 1, 17); 

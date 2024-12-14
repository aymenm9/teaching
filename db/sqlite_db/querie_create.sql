-- Create Teacher table
CREATE TABLE Teacher (
    id INTEGER PRIMARY KEY, 
    Name TEXT NOT NULL
);

-- Create Course table
CREATE TABLE Course (
    id INTEGER PRIMARY KEY, 
    Course_Name TEXT NOT NULL
);

-- Create Class table
CREATE TABLE Class (
    id INTEGER PRIMARY KEY,
    Class_Name TEXT NOT NULL 
);

-- Create Student table
CREATE TABLE Student (
    id INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Class_ID INTEGER,
    FOREIGN KEY (Class_ID) REFERENCES Class(Class_ID)
);

-- Create Teaching table (for teacher-course-class relationship)
CREATE TABLE Teaching (
    Teacher_ID INTEGER,
    Class_ID INTEGER,
    Course_ID INTEGER,
    PRIMARY KEY (Teacher_ID, Class_ID, Course_ID),
    FOREIGN KEY (Teacher_ID) REFERENCES Teacher(Teacher_ID),
    FOREIGN KEY (Class_ID) REFERENCES Class(Class_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Create Mark table (for student-course relationship with marks)
CREATE TABLE Mark (
    Student_ID INTEGER,
    Course_ID INTEGER,
    Mark REAL,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

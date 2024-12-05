-- Q1: List all the rectangles
SELECT * FROM rectangles;

-- Q2: How many rectangles are there?
-- A: [Insert number of rectangles here]
SELECT COUNT(*) AS TotalRectangles FROM rectangles;

-- Q3: What color is the widest rectangle?
-- A: [Insert color of widest rectangle here]
SELECT color FROM rectangles 
ORDER BY width DESC LIMIT 1;

-- Q4: What color is the tallest rectangle?
-- A: [Insert color of tallest rectangle here]
SELECT color FROM rectangles 
ORDER BY height DESC LIMIT 1;

-- Q5: List all rectangles that are wider than they are tall
SELECT * FROM rectangles
WHERE width > height;

-- Q6: Calculate and select the area of each rectangle
-- A: Calculating area for each rectangle.
SELECT id, width, height, (width * height) AS Area FROM rectangles;

-- Q7: What color is the largest rectangle?
-- A: [Insert color of largest rectangle here]
SELECT color FROM rectangles
ORDER BY (width * height) DESC LIMIT 1;

-- Q8: What color is the rectangle that extends the most to the right?
-- A: [Insert color of the rightmost rectangle here]
SELECT color, (x + width) AS RightExtent FROM rectangles
ORDER BY RightExtent DESC LIMIT 1;

-- Q9: Find rectangles with NULL color
SELECT * FROM rectangles
WHERE color IS NULL;

-- Q10: List all the different colors
SELECT DISTINCT color FROM rectangles;

-- Q11: List all the different named colors
SELECT DISTINCT color FROM rectangles
WHERE color NOT LIKE '#%' AND color IS NOT NULL;

-- Q12: List rectangle colors in uppercase
SELECT UPPER(color) AS UppercaseColor FROM rectangles;

-- Q13: What is the course_id of the course with the longest name?
-- A: [Insert course_id here]
SELECT course_id FROM courses
ORDER BY LENGTH(course_name) DESC LIMIT 1;

-- Q14: How many assignments are there with due dates in 2024?
-- A: [Insert number of assignments here]
SELECT COUNT(*) AS AssignmentsIn2024 FROM assignments
WHERE due_date LIKE '2024-%';

-- Q15: Concatenate Course ID and name
SELECT course_id || ': ' || course_name AS CourseDescription FROM courses;

-- Q16: List courses with Labs on Mondays
SELECT course_id, course_name, lab_time FROM courses
WHERE lab_time LIKE '%Mon%';

-- Q17: Past Assignments
SELECT * FROM assignments
WHERE due_date < DATE('now');

-- Q18: How many assignments are there for each course?
SELECT course_id, COUNT(*) AS TotalAssignments FROM assignments
GROUP BY course_id;
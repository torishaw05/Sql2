--******* Using the todolist database from the previous project, write another INSERT INTO todo (title, details, priority,created_at) VALUES (‘Cat’, ’Buy a cat’, 0, '2017-09-14 08:05:03’),


--******* Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
('Dog','Walk my dog', 1, '2017-09-04 06:05:03’),
(‘Turtle’,’Walk my dog', 4, '2017-09-04 01:05:03’),
(‘Umbrella’,’buy an umbrella’, 3, '2017-09-04 02:05:03’),
(‘Bath,’Take a bath’, 0, '2017-09-06 08:05:03’),
('Cat','Walk my dog', 4, '2017-09-08 04:05:03’),('Dog','Walk my dog', 0, '2017-09-04 08:05:03’),('Dog','Walk my dog', 0, '2017-09-01 10:05:03’),
('Groceries','Walk my dog', 1, '2017-09-06 08:05:03’),
('Dishes','Walk my dog', 6, '2017-09-04 12:05:03’),
('Computer','Walk my dog', 10, '2017-09-09 08:02:03’),('Dog','Walk my dog', 4, '2017-09-14 08:05:03’),
('Animal','Walk my dog', 8, '2017-09-04 08:03:03’),('Dog','Walk my dog', 2, '2017-09-20 08:05:03’),
('Dog','Walk my dog', 4, '2017-09-22 08:04:03’),
('Dog','Walk my dog', 11, '2017-09-19 08:05:03’),
('Dog','Walk my dog', 1, '2017-09-04 08:05:03’);

-- ******* Write a SELECT statement to find all incomplete todos with priority 3.
SELECT title
FROM todo
WHERE completed_at IS NULL
AND
priority='3';


--******* Write a SELECT statement to find the number of incomplete todos by priority.
SELECT priority, title
FROM todo
WHERE completed_at IS NULL
ORDER BY priority
;

-- ******* Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT title, priority, created_at
FROM todo
WHERE completed_at IS NULL ORDER BY created_at;

--******* Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT count(id),
priority
FROM todo
WHERE created_at > current_date-INTERVAL '30' DAY
GROUP BY priority;

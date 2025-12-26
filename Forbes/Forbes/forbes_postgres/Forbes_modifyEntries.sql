\c forbes;

SELECT * FROM forbes_names WHERE Person = 'Taylor Swift';
SELECT * FROM forbes_names WHERE Person = 'Susanne Klatten';
SELECT * FROM forbes_names WHERE Person = 'Isak Andic';
SELECT * FROM forbes_2024_11 WHERE Person = 'Isak Andic';

UPDATE forbes_names
SET City = 'Nashville', State = 'Tennessee', Citizenship = 'US', Self_made = 'TRUE'
WHERE Person = 'Taylor Swift';

SELECT * FROM forbes_names WHERE Person = 'Taylor Swift';

SELECT * FROM forbes_names;

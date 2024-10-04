Use Forbes;

SELECT * FROM forbes_names WHERE Person = 'Taylor Swift';
SELECT * FROM forbes_names WHERE Person = 'Elon Musk';

UPDATE forbes_names
SET City = 'Nashville', State = 'Tennessee', Citzenship = 'US', Self_made = 'TRUE'
WHERE Person = 'Taylor Swift';

SELECT * FROM forbes_names WHERE Person = 'Taylor Swift';

SELECT * FROM forbes_names;
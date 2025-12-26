\c forbes;

-- Check for duplicate entries in forbes_names
SELECT Person, COUNT(*)
FROM forbes_names
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2021
SELECT Person, COUNT(*)
FROM forbes_2021
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2022
SELECT Person, COUNT(*)
FROM forbes_2022
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2023
SELECT Person, COUNT(*)
FROM forbes_2023
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_01
SELECT Person, COUNT(*)
FROM forbes_2024_01
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_02
SELECT Person, COUNT(*)
FROM forbes_2024_02
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_03
SELECT Person, COUNT(*)
FROM forbes_2024_03
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_04
SELECT Person, COUNT(*)
FROM forbes_2024_04
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_05
SELECT Person, COUNT(*)
FROM forbes_2024_05
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_06
SELECT Person, COUNT(*)
FROM forbes_2024_06
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_07
SELECT Person, COUNT(*)
FROM forbes_2024_07
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_08
SELECT Person, COUNT(*)
FROM forbes_2024_08
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_09
SELECT Person, COUNT(*)
FROM forbes_2024_09
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_10
SELECT Person, COUNT(*)
FROM forbes_2024_10
GROUP BY Person
HAVING COUNT(*) > 1;

-- Check for duplicate entries in forbes_2024_11
SELECT Person, COUNT(*)
FROM forbes_2024_11
GROUP BY Person
HAVING COUNT(*) > 1;

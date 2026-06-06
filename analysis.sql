-- 1. View full dataset
SELECT * 
FROM fast_food;

-- 2. Average Calories per Restaurant

SELECT restaurant, 
ROUND(AVG(calories),2) AS avg_calories
FROM fast_food
GROUP BY restaurant
ORDER BY avg_calories DESC;


-- 3. Top 10 High-Calorie Items

SELECT item, restaurant, calories
FROM fast_food
ORDER BY calories DESC
LIMIT 10;



-- 4. Top 10 High-Sugar Items

SELECT item, restaurant, sugar
FROM fast_food
ORDER BY sugar DESC
LIMIT 10;



-- 5. High Protein but Low Calories (Healthy Items)

SELECT item, restaurant, protein, calories
FROM fast_food
WHERE protein >= 20 AND calories <= 400
ORDER BY protein DESC;


-- 6. Calories vs Protein Ratio

SELECT item,calories,protein,
ROUND(calories / protein,2) AS cal_per_protein
FROM fast_food
ORDER BY cal_per_protein DESC;



-- 7. Restaurant-wise Total Items

SELECT restaurant,
COUNT(*) AS total_items
FROM fast_food
GROUP BY restaurant
ORDER BY total_items DESC;



-- 8. Categorize Food (Healthy vs Unhealthy)

SELECT item,calories,sugar,
CASE 
WHEN calories > 500 OR sugar > 20 THEN 'Unhealthy'
ELSE 'Healthy'
END AS health_status
FROM fast_food;



-- 9. Average Nutrition by Category

SELECT restaurant,
AVG(calories) AS avg_calories,
AVG(protein) AS avg_protein,
AVG(sugar) AS avg_sugar
FROM fast_food
GROUP BY restaurant;




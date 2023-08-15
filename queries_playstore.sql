--1. Find entire record for the app with an ID of '1880'. 
SELECT * FROM analytics 
    WHERE id = 1880;

--2. Find ID and app name for all apps last updated on Aug. 1, 2018. 
SELECT id, app_name FROM analytics
    WHERE last_updated = '2018-08-01';

--3. Count the number of apps in each category. 

SELECT category, COUNT(*) FROM analytics
    GROUP BY category;

--4. Find the top 5 most-reviewed apps and the number of reviews for each. 
SELECT * FROM analytics
    ORDER BY reviews DESC
    LIMIT 5;

--5. Find the full record of the app that has the most reviews
--     with a rating greater or equal to 4.8.

SELECT * FROM analytics
    WHERE rating >= 4.8
    ORDER BY reviews DESC
    LIMIT 1;

-- 6. Find avg rating for each category ordered 
--      by the highest rated to lowest rated.
SELECT category, AVG(rating) FROM analytics
    GROUP BY category
    ORDER BY avg DESC;

--7. Find name, price, and rating of most expensive app with a rating less than 3. 

SELECT app_name, price, rating FROM analytics
    WHERE rating < 3 
    ORDER BY price DESC
    LIMIT 1;

--8. Find all records with a min install not exceeding 50, that have a rating. 
--    order results by highest rated first. 
SELECT * FROM analytics
    WHERE min_installs <= 50
        AND rating IS NOT NULL
    ORDER BY rating DESC;

--9. Find names of all apps rated less than 3 with at least 1000 reviews. 
SELECT app_name FROM analytics
    WHERE rating < 3 AND reviews >= 10000;

--10. Find top 10 most reviewed apps that cost between 10 cents and 1.00.
SELECT * FROM analytics
    WHERE price BETWEEN 0.1 and 1
    ORDER BY reviews DESC
    LIMIT 10; 

--11. Find most out of date app. 
SELECT * FROM analytics
    ORDER BY last_updated LIMIT 1;

--12. Find most expensive app. 
SELECT * FROM analytics
    ORDER BY price DESC LIMIT 1;

--13. Count all reviews in the Google Play Store. 
SELECT SUM(reviews) AS "All the Reviews" FROM analytics;

--14. Find all categories that have more than 300 apps in them.
SELECT category FROM analytics
    GROUP BY category
    HAVING COUNT(*) > 300;

--15. Find the app that has the highest proportion of reviews to min_installs,
-- among apps that have been installed at least 100,000 times. Display the name of the app
-- along with the number of reviews, the min_installs, and the proportion
SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion
    FROM analytics
    WHERE min_installs >= 100000
    ORDER BY proportion DESC
    LIMIT 1;




























































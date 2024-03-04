/* The heaviest Hitters */
SELECT 
    AVG(people.weight),
    teams.name,
    batting.yearid
FROM people
JOIN batting
    ON batting.playerid = people.playerid
JOIN teams
 	 ON batting.teamid = teams.teamid
GROUP BY 2, 3
ORDER BY 1 DESC
LIMIT 10;


/* Highest Spenders on salaries for each Year */
SELECT 
	teams.name,
	salaries.yearid,
    SUM(salaries.salary) 
    FROM salaries
LEFT JOIN teams
	ON teams.teamid = salaries.teamid
  AND teams.yearid = salaries.yearid
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;


/* The Shortest Sluggers */
SELECT  
    AVG(people.height),
    teams.name,
    batting.yearid
FROM people
INNER JOIN batting 
    ON people.playerid = batting.playerid
INNER JOIN teams
    ON batting.teamid = teams.teamid
GROUP BY 2, 3
ORDER BY AVG (people.height)
LIMIT 10;   



/* Most Bangs for Bucks in 2010 */
SELECT 
    teams.name,
    teams.w,
    salaries.yearid,
    ROUND(SUM(salaries.salary)/teams.w)
FROM salaries
JOIN teams
	ON salaries.teamid = teams.teamid
    AND salaries.yearid = teams.yearid 
WHERE salaries.yearid = 2010 
GROUP BY 1, 2, 3
ORDER BY 4 DESC
LIMIT 10;

/* Most Priciest Starter */
SELECT
     people.namegiven,
     salaries.salary/pitching.g as "cost_per_game",
     salaries.yearid,
     pitching.g
FROM salaries
INNER JOIN pitching
    ON pitching.playerid = salaries.playerid
    AND pitching.yearid = salaries.yearid
    AND pitching.teamid = salaries.teamid
INNER JOIN  people
    ON salaries.playerid = people.playerid
WHERE pitching.gs >= 10
ORDER BY 2 DESC
LIMIT 10;
-- Finding orphan personid(s) 
SELECT ps.PersonID
FROM PlayerStatistics ps
LEFT JOIN Players p
ON ps.PersonID = p.PersonID
WHERE p.PersonID IS NULL;

--Player Performance Query
SELECT PlayerID, AVG(Points) AS AvgPoints
FROM PlayerStatistics
GROUP BY PlayerID;

--Team Comparison
SELECT TeamID, AVG(Points) AS AvgPoints
FROM TeamStatistics
GROUP BY TeamID
ORDER BY AvgPoints DESC;

--Game Analysis
SELECT g.GameID, t.TeamID, t.Points
FROM Games g
JOIN TeamStatistics t ON g.GameID = t.GameID;

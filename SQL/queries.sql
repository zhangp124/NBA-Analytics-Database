-- Added Fields for Primary Key (GameStatID, PlayerStatID)
ALTER TABLE PlayerStatistics/TeamStatistics 
ADD COLUMN PlayerStatID/GameStatID AUTOINCREMENT;


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

-- Finding orphan personid(s) 
SELECT ps.PersonID
FROM PlayerStatistics ps
LEFT JOIN Players p
ON ps.PersonID = p.PersonID
WHERE p.PersonID IS NULL;

--Player Performance Query
SELECT 
p.FirstName,
p.LastName,
ROUND(AVG(ps.Points), 2) AS AvgPoints
FROM PlayerStatistics AS ps
INNER JOIN Players AS p
ON ps.PersonID = p.PersonID
GROUP BY 
p.FirstName,
p.LastName;

--Team Comparison
SELECT 
TeamName,
ROUND(AVG(TeamScore), 2) AS AvgPoints
FROM TeamStatistics
GROUP BY TeamName
ORDER BY ROUND(AVG(teamScore), 2) DESC;

--Game Analysis
SELECT 
g.GameID,

g.hometeamName AS Home,
g.homeScore AS HomeScore,
t1.FieldGoalsMade AS HomeFGM,
t1.FieldGoalsAttempted AS HomeFGA,
t1.FieldGoalsPercentage AS HomeFGPer,

g.awayteamName AS Away,
g.awayScore AS AwayScore,
t2.FieldGoalsMade AS AwayFGM,
t2.FieldGoalsAttempted AS AwayFGA,
t2.FieldGoalsPercentage AS AwayFGPer

FROM (Games AS g
INNER JOIN TeamStatistics AS t1
ON g.GameID = t1.GameID)
INNER JOIN Teamstatistics AS t2
ON g.GameID = t2.GameID

WHERE t1.teamName = g.hometeamName
AND t2.opponentteamName = g.awayteamName;

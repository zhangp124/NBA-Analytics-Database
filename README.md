# 🏀 NBA League-Wide Analytics Database

## 📌 Overview
This project is a relational database system designed to analyze team and player performance across the NBA. It models data for teams, players, games, and advanced basketball metrics, enabling efficient querying and performance analysis.

The system supports both Eastern and Western Conferences, allowing for league-wide comparisons and insights.

---

## 🎯 Objectives
- Design a normalized relational database (3NF)
- Store and manage basketball performance data
- Enable complex analytical queries using SQL
- Generate insights on player and team performance

---

## 🛠️ Technologies Used
- SQL (DDL & DML)
- Microsoft Access
- Data Modeling (UML / ER Diagrams)

---

## 🧱 Database Design

### Core Entities:
- Team  
- Player  
- Game  
- PlayerStats  
- TeamStats  

### Advanced Metrics:
- AdvancedPlayerStats (PER, True Shooting %, Usage Rate, Win Shares)
- AdvancedTeamStats (Offensive Rating, Defensive Rating, Net Rating)

The database includes 10+ normalized tables with primary and foreign key relationships to ensure data integrity.

---

## 🔗 Key Features
- Fully normalized schema (3NF)
- Complex SQL queries (JOIN, GROUP BY, HAVING, subqueries)
- Support for advanced basketball analytics
- Cross-conference performance comparison

---

## Data Used:
https://www.kaggle.com/datasets/eoinamoore/historical-nba-data-and-player-box-scores/data
Players.CSV, PlayerStatistics.csv, TeamStatistics.csv, Games.csv

---

## 📊 Sample Queries

### Top Players by Efficiency
```sql
SELECT player_id, PER
FROM AdvancedPlayerStats
ORDER BY PER DESC;



/*
SharePoint Performance Counters are stored in the PerformanceCounters table in the Uage and Health Database.  The PerformanceCounters table has a CounterId column.  The PerformanceCountersDefiniation table has the Category, Counter and Instance columns.
Simple query to join PerformanceCounters and PerformanceCountersDefinitions.
*/

SELECT
Logtime
,YEAR(LogTime) AS YEAR
,MONTH(LogTime) AS MONTH
,DAY(LogTime) AS Day
,DATEPART(HOUR, LogTime) AS HOUR
,DATEPART(MINUTE, LogTime) AS MINUTE
,MachineName
,Value
,Category
,Counter
,Instance
FROM [dbo].[PerformanceCounters]
INNER JOIN PerformanceCountersDefinitiions
ON CounterId = Id
WHERE LogTime > GETDATE()-1
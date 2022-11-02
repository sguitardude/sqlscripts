/*
SharePoint Performance Counters are stored in the PerformanceCounters table in the Uage and Health Database.  The PerformanceCounters table has a CounterId column.  The PerformanceCountersDefiniation table has the Category, Counter and Instance columns.
Simple query to join PerformanceCounters and PerformanceCountersDefinitions.
*/
SELECT
Logtime
,MachineName
,Value
,Category
,Counter
,Instance
FROM [dbo].[PerformanceCounters]
INNER JOIN PerformanceCountersDefinitions
ON CounterId = Id

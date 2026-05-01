-- Query 1: Top 10 Busiest A&E Departments
SELECT "Org Name", 
       "A&E attendances Type 1"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
ORDER BY "A&E attendances Type 1" DESC
LIMIT 10;

-- Query 2: Top 10 Busiest with % of Total Attendances
SELECT "Org Name",
       "A&E attendances Type 1",
       ROUND("A&E attendances Type 1" * 100.0 / (
           SELECT SUM("A&E attendances Type 1")
           FROM "March-2026-CSV-G49lw"
           WHERE "Org Name" != 'TOTAL'
       ), 2) AS "% of Total Attendances"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
ORDER BY "A&E attendances Type 1" DESC
LIMIT 10;

-- Query 3: Worst 10 Trusts for 4 Hour Wait Target
SELECT "Org Name",
       "A&E attendances Type 1",
       "Attendances over 4hrs Type 1",
       ROUND("Attendances over 4hrs Type 1" * 100.0 / "A&E attendances Type 1", 2) AS "% Waiting Over 4hrs"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
AND "A&E attendances Type 1" > 0
ORDER BY "% Waiting Over 4hrs" DESC
LIMIT 10;

-- Query 4: Worst 10 Trusts for 12 Hour Waits
SELECT "Org Name",
       "Patients who have waited 12+ hrs from DTA to admission"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
ORDER BY "Patients who have waited 12+ hrs from DTA to admission" DESC
LIMIT 10;

-- Query 5: Highest Emergency Admission Rates
SELECT "Org Name",
       "Emergency admissions via A&E - Type 1",
       "A&E attendances Type 1",
       ROUND("Emergency admissions via A&E - Type 1" * 100.0 / "A&E attendances Type 1", 2) AS "% Admitted"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
AND "A&E attendances Type 1" > 0
ORDER BY "% Admitted" DESC
LIMIT 10;

-- Query 6: Performance Band Categorisation (All Trusts)
SELECT "Org Name",
       "A&E attendances Type 1",
       "Attendances over 4hrs Type 1",
       ROUND("Attendances over 4hrs Type 1" * 100.0 / "A&E attendances Type 1", 2) AS "% Waiting Over 4hrs",
       CASE 
           WHEN ROUND("Attendances over 4hrs Type 1" * 100.0 / "A&E attendances Type 1", 2) >= 50 THEN 'Critical'
           WHEN ROUND("Attendances over 4hrs Type 1" * 100.0 / "A&E attendances Type 1", 2) >= 30 THEN 'Poor'
           WHEN ROUND("Attendances over 4hrs Type 1" * 100.0 / "A&E attendances Type 1", 2) >= 10 THEN 'Acceptable'
           ELSE 'Good'
       END AS "Performance Band"
FROM "March-2026-CSV-G49lw"
WHERE "Org Name" != 'TOTAL'
AND "A&E attendances Type 1" > 0
ORDER BY "% Waiting Over 4hrs" DESC;
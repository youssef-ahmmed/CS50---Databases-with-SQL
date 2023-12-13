CREATE VIEW "most_populated" AS
SELECT
  "district",
  SUM("families") AS "families",
  SUM("households") AS "households",
  SUM("population") AS "popluation",
  SUM("male") AS "male",
  SUM("female") AS "female"
FROM
  "census"
GROUP BY
  "district"
ORDER BY
  "popluation" DESC;

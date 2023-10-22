SELECT
  ROUND(AVG("s"."salary"), 2) AS 'average salary',
  "t"."name"
FROM
  "teams" AS "t"
  JOIN "salaries" AS "s" ON "t"."id" = "s"."team_id"
WHERE
  "s"."year" = 2001
GROUP BY
  "t"."name"
ORDER BY
  "s"."salary"
LIMIT
  5;
SELECT
  "d"."name",
  "e"."per_pupil_expenditure",
  "s"."exemplary"
FROM
  "staff_evaluations" AS "s"
  JOIN "districts" AS "d" ON "d"."id" = "s"."district_id"
  JOIN "expenditures" AS "e" ON "d"."id" = "e"."district_id"
WHERE
  "d"."type" = 'Public School District'
  AND "e"."per_pupil_expenditure" > (
    SELECT
      AVG("per_pupil_expenditure")
    FROM
      "expenditures"
  )
  AND "s"."exemplary" > (
    SELECT
      AVG("exemplary")
    FROM
      "staff_evaluations"
  )
ORDER BY
  "s"."exemplary" DESC,
  "e"."per_pupil_expenditure" DESC;
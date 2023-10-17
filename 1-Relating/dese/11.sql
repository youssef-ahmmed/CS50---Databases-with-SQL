SELECT
  "s"."name",
  "e"."per_pupil_expenditure",
  "g"."graduated"
FROM
  "expenditures" AS "e"
  JOIN "districts" AS "d" ON "e"."district_id" = "d"."id"
  JOIN "schools" AS "s" ON "d"."id" = "s"."district_id"
  JOIN "graduation_rates" AS "g" ON "s"."id" = "g"."school_id"
ORDER BY
  "e"."per_pupil_expenditure" DESC,
  "s"."name";
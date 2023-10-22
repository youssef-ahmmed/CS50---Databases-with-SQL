SELECT
  "pl"."first_name",
  "pl"."last_name",
  "s"."salary",
  "s"."year",
  "pe"."HR"
FROM
  "players" AS "pl"
  JOIN "salaries" AS "s" ON "s"."player_id" = "pl"."id"
  JOIN "performances" AS "pe" ON "pl"."id" = "pe"."player_id"
  AND "s"."year" = "pe"."year"
ORDER BY
  "pl"."id" ASC,
  "s"."year" DESC,
  "pe"."HR" DESC,
  "s"."salary" DESC;
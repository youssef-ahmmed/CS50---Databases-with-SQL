SELECT
  "pl"."first_name",
  "pl"."last_name",
  "s"."salary" / "pe"."H" AS 'dollars per hit'
FROM
  "players" AS "pl"
  JOIN "salaries" AS "s" ON "s"."player_id" = "pl"."id"
  JOIN "performances" AS "pe" ON "pl"."id" = "pe"."player_id"
  AND "s"."year" = "pe"."year"
WHERE
  "s"."year" = 2001
  AND "pe"."H" != 0
ORDER BY
  "dollars per hit",
  "pl"."first_name",
  "pl"."last_name"
LIMIT
  10;
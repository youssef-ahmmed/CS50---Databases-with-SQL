SELECT
  "s"."salary"
FROM
  "salaries" AS "s"
  JOIN "players" AS "pl" ON "s"."player_id" = "pl"."id"
  JOIN "performances" AS "pe" ON "pl"."id" = "pe"."player_id"
WHERE
  "s"."year" = 2001
  AND "pe"."year" = 2001
  AND "pe"."HR" = (
    SELECT
      MAX("HR")
    FROM
      "performances"
  );
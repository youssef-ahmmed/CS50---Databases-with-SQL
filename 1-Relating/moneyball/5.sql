SELECT
  DISTINCT "t"."name"
FROM
  "players" AS "pl"
  JOIN "performances" AS "pe" ON "pl"."id" = "pe"."player_id"
  JOIN "teams" AS "t" ON "pe"."team_id" = "t"."id"
WHERE
  "pl"."first_name" = 'Satchel'
  AND "pl"."last_name" = 'Paige';
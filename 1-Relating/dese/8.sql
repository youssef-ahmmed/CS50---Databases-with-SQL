SELECT "d"."name", SUM("e"."pupils") AS 'Number of Pupils'
FROM "districts" AS "d"
JOIN "expenditures" AS "e"
ON "d"."id" = "e"."district_id"
GROUP BY "d"."name";
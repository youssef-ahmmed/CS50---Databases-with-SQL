SELECT
  "name"
FROM
  "districts"
WHERE
  "id" = (
    SELECT
      "district_id"
    FROM
      "expenditures"
    GROUP BY
      "district_id"
    HAVING
      SUM("pupils") = (
        SELECT
          MIN("enrollment")
        FROM
          (
            SELECT
              SUM("pupils") AS "enrollment"
            FROM
              "expenditures"
            GROUP BY
              "district_id"
          ) AS "enrollments"
      )
      AND "districts"."type" = 'Public School District'
  );
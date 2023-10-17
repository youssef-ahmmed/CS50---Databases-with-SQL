-- *** The Lost Letter ***

-- find the address and type
SELECT "address", "type"
FROM "addresses"
WHERE "id" = (
    SELECT "to_address_id"
    FROM "packages"
    WHERE "contents" = 'Congratulatory letter'
);

-- *** The Devious Delivery ***

-- find only type
SELECT "type"
FROM "addresses"
WHERE "id" = (
    SELECT "address_id"
    FROM "scans"
    WHERE "package_id" = (
        SELECT "id"
        FROM "packages"
        WHERE "from_address_id" IS NULL
    )
    AND "action" = 'Drop'
);

-- find only content
SELECT "contents"
FROM "packages"
WHERE "from_address_id" IS NULL;

-- *** The Forgotten Gift ***

-- find only content
SELECT "contents"
FROM "packages"
WHERE "from_address_id" = (
    SELECT "id"
    FROM "addresses"
    WHERE "address" = '109 Tileston Street'
);

-- find the all information about originated gift
SELECT * FROM "addresses" WHERE "address" = '728 Maple Place';

-- find the all information about originated gift
SELECT * FROM "addresses" WHERE "address" = '109 Tileston Street';

-- find all information about the package which comes from 109 Tileston Street
SELECT * FROM "packages" WHERE "from_address_id" = 9873;

-- find all information about the scans of lost package
SELECT * FROM "scans" WHERE "package_id" = 9523;

-- find the name of the driver who has the gift
SELECT * FROM "drivers" WHERE "id" = 17;

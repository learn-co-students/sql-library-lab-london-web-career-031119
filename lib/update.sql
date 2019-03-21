-- Update the species of the last character in the database to "Martian"
-- by writing an update statement in `update.sql`.




-- SELECT characters.species FROM characters ORDER BY characters.species DESC LIMIT 1;


UPDATE
    characters
SET
    species = "Martian"

WHERE
    id = (SELECT MAX(characters.id) FROM characters);

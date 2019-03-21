-- updates the species of the last character in the characters table to "Martian"

UPDATE characters
SET species = "Martian"
WHERE id=(SELECT MAX(characters.id) FROM characters);

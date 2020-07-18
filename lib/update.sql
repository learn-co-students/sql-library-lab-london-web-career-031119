UPDATE characters
SET species = "Martian"
WHERE id=(SELECT MAX(characters.id) FROM characters);
INSERT INTO series (id, title, author_id, subgenre_id) VALUES
(1, "The Solar System",1, 2),
(2, "The Flying Wonders", 2, 1);
INSERT INTO subgenres (id, name) VALUES
(1, "Dragons"),
(2, "Fairies");
INSERT INTO authors (id, name) VALUES
(1, "Liu Cixin"),
(2, "Margaret Atwood");
INSERT INTO books (id, title, year, series_id) VALUES
(1,"The Wandering Earth", "2001",1),
(2,"Three-Body Problem", "2003",1),
(3,"Trisolarians", "2008",1),
(4,"Oryx and Crake", "1982", 2),
(5,"The Handmaid's Tale", "1990",2),
(6,"Latest MA", "2001",2);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, "Lady", "Woof Woof", "direwolf", 1, 1), (2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1), (3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1), (4, "Eddard Stark", "Winter is coming", "human", 1, 1);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (5, "Character One", "motto one", "cylon", 2, 2), (6, "Character Two", "motto two", "human", 2, 2), (7, "Character Three", "motto three", "cylon", 2, 2), (8, "Character Four", "motto four", "cylon", 2, 2);

INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 2), (5, 1, 3), (6, 2, 3), (7, 3, 3), (8, 1, 4);

INSERT INTO character_books (id, book_id, character_id) VALUES (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6), (13, 4, 7), (14, 5, 7), (15, 6, 7), (16, 4, 8);

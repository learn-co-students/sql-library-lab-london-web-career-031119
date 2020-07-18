def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY Length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species)
  FROM characters
  GROUP BY species
  HAVING count(species)
  ORDER BY count(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name AS 'Author Name', subgenres.name AS 'Subgenre Name'
  FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title AS 'Series Title With Most Human Characters'
  FROM characters
  JOIN series
  ON characters.series_id = series.id
  GROUP BY characters.species
  ORDER BY count(characters.species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  #selects all of the character names and their number of books they have appeared in, in descending order
  "SELECT characters.name, count(books.id) AS 'number of books appeared in'
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  JOIN books
  ON books.id = character_books.book_id
  GROUP BY characters.id
  ORDER BY count(characters.id) DESC, characters.name ASC;"
end

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT b.title, b.year FROM books AS b JOIN series AS s ON b.series_id = s.id WHERE s.id = 1 ORDER BY 2;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT c.name, c.motto FROM characters AS c ORDER BY LENGTH(c.motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT c.species, COUNT(c.species) FROM characters AS c GROUP BY 1 ORDER BY 1 DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sub.name FROM authors AS a JOIN series AS s ON a.id = s.author_id JOIN subgenres AS sub ON s.subgenre_id = sub.id;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title FROM series AS s JOIN characters AS c ON s.id = c.series_id WHERE c.species = 'human' GROUP BY 1 ORDER BY COUNT(s.title) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(cb.id) FROM characters AS c JOIN character_books AS cb ON c.id = cb.character_id GROUP BY 1 ORDER BY 2 DESC;"
end

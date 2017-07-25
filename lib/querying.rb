def select_books_titles_and_years_in_first_series_order_by_year
  # select book titles (books.title) with years (books.year)
  # order by year (books.year)
  "SELECT books.title, books.year
    FROM books
    JOIN series
    ON books.series_id = series.id
    WHERE series.id = 1
    ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  # select name (characters.name) and motto (characters.motto) of character with longest motto LEN(characters.motto)
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY characters.motto
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  # count how many characters.species are same
  # total the number of each characters.species
  # return characters.species and count
  "SELECT characters.species, COUNT(characters.species)
    FROM characters
    GROUP BY characters.species
    ORDER BY COUNT(characters.species) DESC LIMIT 1"
end


def select_name_and_series_subgenres_of_authors
  # select authors.name and subgenres.name
    "SELECT authors.name, subgenres.name
    FROM authors
    JOIN series
    ON series.author_id = authors.id
    JOIN subgenres
    ON series.subgenre_id = subgenres.id"
end


def select_series_title_with_most_human_characters
  # series.title, characters.species = "human"
  # seems smelly
  "SELECT series.title
  FROM series
  JOIN characters
  ON characters.species = 'human' LIMIT 1"
end


def select_character_names_and_number_of_books_they_are_in
  # character_books.character_id;
  # character_books.book_id = books.id
  # characters.name
  "SELECT characters.name, COUNT(character_books.character_id)
    FROM characters
    JOIN character_books
    ON character_books.character_id = characters.id
    GROUP BY characters.name
    ORDER BY COUNT(character_books.character_id) DESC"

end

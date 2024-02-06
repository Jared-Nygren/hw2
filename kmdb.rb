# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Role.destroy_all
Actor.destroy_all
Movie.destroy_all
Studio.destroy_all


# Generate models and tables, according to the domain model.
# TODO!

# rails generate model Movie
# rails generate model Actor
# rails generate model Studio
# rails generate model Role

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Insert Studio Data

warner_bros = Studio.new
warner_bros["name"] = "Warner Bros."
warner_bros.save

# Insert Movie Data

batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year"] = 2005
batman_begins["rating"] = "PG-13"
batman_begins["studio_id"] = warner_bros.id
batman_begins.save

the_dark_knight = Movie.new
the_dark_knight["title"] = "The Dark Knight"
the_dark_knight["year"] = 2008
the_dark_knight["rating"] = "PG-13"
the_dark_knight["studio_id"] = warner_bros.id
the_dark_knight.save

the_dark_knight_rises = Movie.new
the_dark_knight_rises["title"] = "The Dark Knight Rises"
the_dark_knight_rises["year"] = 2012
the_dark_knight_rises["rating"] = "PG-13"
the_dark_knight_rises["studio_id"] = warner_bros.id
the_dark_knight_rises.save


# Insert Actor Data

christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save

# Insert Actor Data 

# Batman Begins Roles
role = Role.new
role.movie_id = batman_begins.id
role.actor_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.actor_id = michael_caine.id
role.character_name = "Alfred"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.actor_id = liam_neeson.id
role.character_name = "Ra's Al Ghul"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.actor_id = katie_holmes.id
role.character_name = "Rachel Dawes"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.actor_id = gary_oldman.id
role.character_name = "Commissioner Gordon"
role.save

# The Dark Knight Roles
role = Role.new
role.movie_id = the_dark_knight.id
role.actor_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = the_dark_knight.id
role.actor_id = heath_ledger.id
role.character_name = "Joker"
role.save

role = Role.new
role.movie_id = the_dark_knight.id
role.actor_id = aaron_eckhart.id
role.character_name = "Harvey Dent"
role.save

role = Role.new
role.movie_id = the_dark_knight.id
role.actor_id = michael_caine.id
role.character_name = "Alfred"
role.save

role = Role.new
role.movie_id = the_dark_knight.id
role.actor_id = maggie_gyllenhaal.id
role.character_name = "Rachel Dawes"
role.save

# The Dark Knight Rises Roles
role = Role.new
role.movie_id = the_dark_knight_rises.id
role.actor_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = the_dark_knight_rises.id
role.actor_id = gary_oldman.id
role.character_name = "Commissioner Gordon"
role.save

role = Role.new
role.movie_id = the_dark_knight_rises.id
role.actor_id = tom_hardy.id
role.character_name = "Bane"
role.save

role = Role.new
role.movie_id = the_dark_knight_rises.id
role.actor_id = joseph_gordon_levitt.id
role.character_name = "John Blake"
role.save

role = Role.new
role.movie_id = the_dark_knight_rises.id
role.actor_id = anne_hathaway.id
role.character_name = "Selina Kyle"
role.save




# Query the movies data
movies = Movie.all

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Create a hash of all studios with their id as the key for quick lookup
studios = Studio.all.index_by(&:id)

# Print a header for the movies output
puts "Movies"
puts "======"

# Loop through the movies and display their details
movies.each do |movie|
  # Use the studio_id to find the studio name from the hash
  studio_name = studios[movie.studio_id]&.name || "No Studio"

  puts "#{movie.title} - #{movie.year} - #{movie.rating} - #{studio_name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# Create a hash of all actors for quick lookup
actors = Actor.all.index_by(&:id)

# Query the cast data and loop through the results
puts "Top Cast"
puts "========"

Movie.all.each do |movie|
  puts "\n#{movie.title}"
  Role.where(movie_id: movie.id).each do |role|
    actor_name = actors[role.actor_id]&.name || "Unknown Actor"
    puts "  #{actor_name} as #{role.character_name}"
  end
end
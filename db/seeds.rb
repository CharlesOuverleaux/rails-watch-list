# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Movie.create(title: 'Wonder Woman 1984',
             overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s', poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', rating: 6.9)
Movie.create(title: 'The Shawshank Redemption',
             overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison', poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', rating: 8.7)
Movie.create(title: 'Titanic',
             overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.', poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', rating: 7.9)
Movie.create(title: "Ocean's Eight",
             overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.', poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: 7.0)
Movie.create(title: "The lord of the rings",
             overview: 'Dark forces arises in Mordor, a group of hobbits is drinking beer.', poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: 7.0)


#replace seed of manual instances to api call
# "results", "original_title":"overview": "poster_path": "vote_average":

# require "json"
# require "rest-client"


# # puts "Creating movies in the db from the moviesdb API"
# response = RestClient.get "https://api.themoviedb.org/3/movie/top_rated?api_key=5cdc26c9a33489dbb92a75887cc075df&language=en-US"
# repos = JSON.parse(response)
# # we get a hash back, so we select all the results
# results = repos['results']
# # p repos

# # for each article we will have to make an api call
# # the api call will have to return the title and the url
# results.each do |movie|
#   # getting the right data to create a movie
#   title =  movie['original_title']
#   overview = movie['overview']
#   poster =  'https://image.tmdb.org/t/p/original/' + movie['poster_path']
#   rating =  movie['vote_average']
#   # creating and saving the movie
#   Movie.create(title: title, overview: overview, poster_url: poster, rating: rating)
# end

# puts "Done!"

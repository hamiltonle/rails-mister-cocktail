# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating seeds"
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin and Tonic")
Cocktail.create(name: "Old Fashion")
Cocktail.create(name: "Black and Tan")
Cocktail.create(name: "Black Velvet")
Cocktail.create(name: "Boilermaker")
Cocktail.create(name: "Hangman's Blood")
Cocktail.create(name: "Irish Car Bomb")
Cocktail.create(name: "Michelada")
Cocktail.create(name: "Porchcrawler")
Cocktail.create(name: "Sake Bomb")
Cocktail.create(name: "Shandy")
Cocktail.create(name: "Snakebite")
Cocktail.create(name: "U-Boot")


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "beer")
Ingredient.create(name: "lime")
Ingredient.create(name: "coke")
Ingredient.create(name: "vodka")
Ingredient.create(name: "gin")
Ingredient.create(name: "rum")
puts "Finished seeding"

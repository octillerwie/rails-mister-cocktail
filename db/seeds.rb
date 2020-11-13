# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Ingredient.destroy_all if Rails.env.development?
Cocktail.destroy_all if Rails.env.development?
puts "Deleted all ingredients and cocktails"

ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
# puts ingredients
ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
  puts "Created all cocktails"
end


# open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |ingredients|
#   data = []
#   ingredients.read.each_line do |ingredient|
#     @item = JSON.parse("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
#     object = {
#       "name": @item["drinks.strIngredient1"]
#     }
#     data << object
#   end
#   Ingredient.create!(data)
# end
#

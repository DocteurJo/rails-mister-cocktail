# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_hash = JSON.parse(open(url).read)
#require 'pry-byebug'
#binding.pry
drinks_hash['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

capirinha = Cocktail.create(name: 'Capirinha')
margharita = Cocktail.create(name: 'Margharita')
gin_tonic = Cocktail.create(name: 'Gin tonic')
capi_vodka = Cocktail.create(name: 'Capi vodka')
capiroska = Cocktail.create(name: 'Capiroska')
mojito = Cocktail.create(name: 'Mojito')
bloody_mary = Cocktail.create(name: 'Bloody Mary')
white_russian = Cocktail.create(name: 'White Russian')


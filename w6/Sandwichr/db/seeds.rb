# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sandwich.create name: 'Submarino', bread_type: 'Blanco'
Sandwich.create name: 'Bikini', bread_type: 'Molde'

Ingredient.create name: 'Onion', calorie: '25'
Ingredient.create name: 'Jamon', calorie: '50'



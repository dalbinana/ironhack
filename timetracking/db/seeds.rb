# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'it is a coding school'
Project.create name: 'Time tracking app'
Project.create name: 'Recipes', description: 'I want to cook'
Project.create name: 'Boats'
Project.create name: 'Football', description: 'Will I win?'
Project.create name: 'class', description: 'do not forget to come on time'
Project.create name: 'sleepy', description: 'People are sleepy sometimes'
Project.create name: 'Smile', description: 'Live, laugh, love'

Entry.create project_id: 1, hours: 2, minutes: 15, comments: "one entry"
Entry.create project_id: 1, hours: 1, minutes: 43, comments: "another entry"

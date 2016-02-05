# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Link.create original_url:'http://www.google.com', new_url:'1'
Link.create original_url:'http://www.facebook.com', new_url:'2'
Link.create original_url:'http://www.twitter.com', new_url:'3'
Link.create original_url:'http://www.commonpeoplei.com', new_url:'4'


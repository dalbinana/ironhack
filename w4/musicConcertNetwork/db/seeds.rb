# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Concert.destroy_all

Concert.create artist:'Cola Jet Set', venue:"Apolo", city:"Barcelona", date: Date.new(2016, 2, 5), price:"10", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo."
Concert.create artist:'Cola Jet Set', venue:"Sidecar", city:"Barcelona", date: Date.new(2016, 2, 6), price:"15", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo.</div>"
Concert.create artist:'La Casa Azul', venue:"Apolo", city:"Barcelona", date:Date.new(2016, 2, 4), price:"10", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo.</div>"
Concert.create artist:'Papa Topo', venue:"Apolo", city:"Madrid", date:Date.new(2016, 2, 10), price:"10", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo.</div>"
Concert.create artist:'Pulp', venue:"Sant Jordi", city:"Barcelona", date:Date.new(2016, 2, 15), price:"19", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo.</div>"
Concert.create artist:'Los Planetas', venue:"Lata de Bombillas", city:"Zaragoza", date:Date.new(2016, 3, 2), price:"12", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laborum quisquam nihil temporibus asperiores voluptatem voluptate, possimus sunt corrupti, debitis tenetur repellat, beatae sed, quod quasi voluptas cumque illo quo.</div>"

Comment.create concert_id: "1", textComment:"Lorem ipsim 2"
Comment.create concert_id: "1", textComment:"Lorem ipsim 3"
Comment.create concert_id: "1", textComment:"Lorem ipsim 4"
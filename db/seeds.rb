# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lakes = Lake.create([{ name: 'Waneka', lake_zipcode: "80026", content: "Great Lake"}, { name: 'Walden Ponds', lake_zipcode: "80230", content: "awesome wildlife"  }, { name: 'Gross Reservoir', lake_zipcode: "81116", content: "Deep and Scary" }])

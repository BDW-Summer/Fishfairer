# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lakes = Lake.create([{ name_of_lake: 'Waneka', lake_zipcode: "80026", user_id: "2", content: "Great Lake" }, { name_of_lake: 'Walden Ponds', lake_zipcode: "80230", user_id: "22", content: "awesome wildlife"  }, { name_of_lake: 'Gross Reservoir', lake_zipcode: "81116", user_id: "4", content: "Deep and Scary" }])

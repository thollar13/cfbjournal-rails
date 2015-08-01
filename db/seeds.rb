# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#atlantic division
Team.create(name: 'Florida State', conference: "ACC", division: "Atlantic")
Team.create(name: 'Louisville', conference: "ACC", division: "Atlantic")
Team.create(name: 'Boston College', conference: "ACC", division: "Atlantic")
Team.create(name: 'NC State', conference: "ACC", division: "Atlantic")
Team.create(name: 'Wake Forest', conference: "ACC", division: "Atlantic")
Team.create(name: 'Syracuse', conference: "ACC", division: "Atlantic")
Team.create(name: 'Clemson', conference: "ACC", division: "Atlantic")

#coastal division
Team.create(name: 'Georgia Tech', conference: "ACC", division: "Coastal")
Team.create(name: 'Duke', conference: "ACC", division: "Coastal")
Team.create(name: 'North Carolina', conference: "ACC", division: "Coastal")
Team.create(name: 'Pittsburgh', conference: "ACC", division: "Coastal")
Team.create(name: 'Virginia', conference: "ACC", division: "Coastal")
Team.create(name: 'Virginia Tech', conference: "ACC", division: "Coastal")
Team.create(name: 'Miami (FL)', conference: "ACC", division: "Coastal")

#big 12 conference
Team.create(name: 'Iowa State', conference: "BIG12")
Team.create(name: 'Oklahoma State', conference: "BIG12")
Team.create(name: 'Oklahoma', conference: "BIG12")
Team.create(name: 'Baylor', conference: "BIG12")
Team.create(name: 'Texas', conference: "BIG12")
Team.create(name: 'West Virginia', conference: "BIG12")
Team.create(name: 'Kansas', conference: "BIG12")
Team.create(name: 'Kansas State', conference: "BIG12")
Team.create(name: 'TCU', conference: "BIG12")
Team.create(name: 'Texas Tech', conference: "BIG12")

#big 10 east
Team.create(name: 'Indiana', conference: "BIG10", division: "East")
Team.create(name: 'Maryland', conference: "BIG10", division: "East")
Team.create(name: 'Michigan State', conference: "BIG10", division: "East")
Team.create(name: 'Michigan', conference: "BIG10", division: "East")
Team.create(name: 'Rutgers', conference: "BIG10", division: "East")
Team.create(name: 'Ohio State', conference: "BIG10", division: "East")
Team.create(name: 'Penn State', conference: "BIG10", division: "East")

#big 10 west
Team.create(name: 'Northwestern', conference: "BIG10", division: "West")
Team.create(name: 'Minnesota', conference: "BIG10", division: "West")
Team.create(name: 'Nebraska', conference: "BIG10", division: "West")
Team.create(name: 'Wisconsin', conference: "BIG10", division: "West")
Team.create(name: 'Illinois', conference: "BIG10", division: "West")
Team.create(name: 'Iowa', conference: "BIG10", division: "West")
Team.create(name: 'Purdue', conference: "BIG10", division: "West")

#pac 12 north
Team.create(name: 'Stanford', conference: "PAC12", division: "North")
Team.create(name: 'California', conference: "PAC12", division: "North")
Team.create(name: 'Oregon State', conference: "PAC12", division: "North")
Team.create(name: 'Washington', conference: "PAC12", division: "North")
Team.create(name: 'Washington State', conference: "PAC12", division: "North")
Team.create(name: 'Oregon', conference: "PAC12", division: "North")

#pac 12 south
Team.create(name: 'Arizona State', conference: "PAC12", division: "South")
Team.create(name: 'Arizona', conference: "PAC12", division: "South")
Team.create(name: 'UCLA', conference: "PAC12", division: "South")
Team.create(name: 'USC', conference: "PAC12", division: "South")
Team.create(name: 'Colorado', conference: "PAC12", division: "South")
Team.create(name: 'Utah', conference: "PAC12", division: "South")

#sec east
Team.create(name: 'Florida', conference: "SEC", division: "East")
Team.create(name: 'Georgia', conference: "SEC", division: "East")
Team.create(name: 'Kentucky', conference: "SEC", division: "East")
Team.create(name: 'Missouri', conference: "SEC", division: "East")
Team.create(name: 'Vanderbilt', conference: "SEC", division: "East")
Team.create(name: 'South Carolina', conference: "SEC", division: "East")
Team.create(name: 'Tennessee', conference: "SEC", division: "East")

#sec west
Team.create(name: 'Auburn', conference: "SEC", division: "West")
Team.create(name: 'Arkansas', conference: "SEC", division: "West")
Team.create(name: 'LSU', conference: "SEC", division: "West")
Team.create(name: 'Ole Miss', conference: "SEC", division: "West")
Team.create(name: 'Texas A&M', conference: "SEC", division: "West")
Team.create(name: 'Alabama', conference: "SEC", division: "West")
Team.create(name: 'Mississippi State', conference: "SEC", division: "West")









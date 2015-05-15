# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = Item.create([{ item_name: 'Hoola Hoop', item_description: 'Circular tube you can spin around your waist for entertainment and what not.', user_id: 1 }, { item_name: 'Rasta Hat', item_description: 'Jamaican hat. So awesome. So awesome.', user_id: 1 }, { item_name: 'Pickle', item_description: 'Brined in the finest of brines. From the anciet sea clay of Mesopotamia.', user_id: 2 }, { item_name: 'Noodle Roller', item_description: 'Used by Italians across the land. Or as a pool toy.', user_id: 2 }])
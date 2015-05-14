# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
Item.destroy_all

# users = User.create([
# 	{name: "Austin", last_name: "Kim", email: "austin@example.com", password_digest: "password"},
# 	{name: "Joey", last_name: "Volpe", email: "joey@example.com", password_digest: "password"},
# 	{name: "Carlos", last_name: "Cruz", email: "carlos@example.com", password_digest: "password"}
# ])

items = Item.create([
	{item_name: "stick", item_description: "long", user_id: 1, item_image: "http://slodive.com/wp-content/uploads/2013/02/popular-logos/popular-twitter-logo.jpg"},
	{item_name: "rock", item_description: "hard", user_id: 1},
	{item_name: "paper", item_description: "light", user_id: 1}
])
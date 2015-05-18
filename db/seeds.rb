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
#   {name: "Austin", last_name: "Kim", email: "austin@example.com", password_digest: "password"},
#   {name: "Joey", last_name: "Volpe", email: "joey@example.com", password_digest: "password"},
#   {name: "Carlos", last_name: "Cruz", email: "carlos@example.com", password_digest: "password"}
# ])

items = Item.create([
  { item_name: 'Hula Hoop', item_description: 'Circular tube you can spin around your waist for entertainment and what not.', item_image: "http://cliparts.co/cliparts/pco/Apg/pcoApgxzi.jpg", user_id: 1 }, 
  { item_name: 'Rasta Hat', item_description: 'Jamaican hat. So awesome. So awesome.', item_image: "http://www.crazylizard.co.uk/image/cache/data/Hats/rasta-hat-9-1000x1000.jpg", user_id: 1 },
  { item_name: 'Pickle', item_description: 'Brined in the finest of brines. From the anciet sea clay of Mesopotamia.', item_image: "http://luckymojo.com/dill-pickle.jpg", user_id: 2 }, 
  { item_name: 'Noodle Roller', item_description: 'Used by Italians across the land. Or as a pool toy.', item_image: "http://i01.i.aliimg.com/wsphoto/v0/1873994803_1/EMS-DHL-TNT-Free-Ship-3-Types-Stainless-Steel-Manual-font-b-Pasta-b-font-Machine.jpg", user_id: 2 }, 
  {item_name: "Stick", item_description: "A long branch fallen from the sky. Ruthlessly reconfigured to inflict damage to humans.", item_image: "http://cdn.2st.com.au/images/stories/2015/04/stick.jpg", user_id: 1 }, 
  {item_name: "Rock", item_description: "Volcanic rock found on a mountain in Italy. The first rock on planet Eart.", item_image: "http://f.tqn.com/y/geology/1/S/M/W/scoria500.jpg", user_id: 1 },
  {item_name: "Rubber Chicken", item_description: "Maleable ode to a commonly consumed pheasant.", item_image: "https://www.mastgeneralstore.com/ProductImages//a0c76311-1490-4b52-ba5c-1c420aa46e84/images/ProdDetail_Retina_3906.jpg", user_id: 2},
  { item_name: 'Hula Hoop2', item_description: 'Circular tube you can spin around your waist for entertainment and what not.', item_image: "http://cliparts.co/cliparts/pco/Apg/pcoApgxzi.jpg", user_id: 1 }, 
  { item_name: 'Rasta Hat2', item_description: 'Jamaican hat. So awesome. So awesome.', item_image: "http://www.crazylizard.co.uk/image/cache/data/Hats/rasta-hat-9-1000x1000.jpg", user_id: 1 },
  { item_name: 'Pickle2', item_description: 'Brined in the finest of brines. From the anciet sea clay of Mesopotamia.', item_image: "http://luckymojo.com/dill-pickle.jpg", user_id: 2 }, 
  { item_name: 'Noodle Roller2', item_description: 'Used by Italians across the land. Or as a pool toy.', item_image: "http://i01.i.aliimg.com/wsphoto/v0/1873994803_1/EMS-DHL-TNT-Free-Ship-3-Types-Stainless-Steel-Manual-font-b-Pasta-b-font-Machine.jpg", user_id: 2 }, 
  {item_name: "Stick2", item_description: "A long branch fallen from the sky. Ruthlessly reconfigured to inflict damage to humans.", item_image: "http://cdn.2st.com.au/images/stories/2015/04/stick.jpg", user_id: 1 }, 
  {item_name: "Rock2", item_description: "Volcanic rock found on a mountain in Italy. The first rock on planet Eart.", item_image: "http://f.tqn.com/y/geology/1/S/M/W/scoria500.jpg", user_id: 1 },
  {item_name: "Rubber Chicken2", item_description: "Maleable ode to a commonly consumed pheasant.", item_image: "https://www.mastgeneralstore.com/ProductImages//a0c76311-1490-4b52-ba5c-1c420aa46e84/images/ProdDetail_Retina_3906.jpg", user_id: 2}
  ])







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# SHOWS
Show.delete_all

gbbo = Show.create({
  title: "The Great British Bake Off",
  series: 7,
  description: "Master bakers Mary & Paul and the incomparable presenting duo of Mel & Sue are back for another interesting series about baking cakes.",
  image_url: "placeholder.jpg",
  programme_id: "b013pqnm"
})
room_101 = Show.create({
  title: "Room 101",
  series: 7,
  description: "Lee Evans hosts a show where celebrities try to pursuade him to send their least favourite things to room 101",
  image_url: "placeholder.jpg",
  programme_id: "ttdsx45"
})

# USERS
User.delete_all

matthew = User.create first_name: "Matthew", last_name: "Jeorrett"
catriona = User.create first_name: "Catriona", last_name: "Jeorrett"
ben = User.create first_name: "Ben", last_name: "Thompson"

# FAVOURITES
Favourite.delete_all

Favourite.create user_id: matthew.id, show_id: gbbo.id
Favourite.create user_id: catriona.id, show_id: gbbo.id
Favourite.create user_id: ben.id, show_id: room_101.id

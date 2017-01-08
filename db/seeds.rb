# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all

Item.create!(name: 'Smart Hub', price: 49.99)
Item.create!(name: 'Motion Sensor', price: 24.99)
Item.create!(name: 'Wireless Camera', price: 99.99)
Item.create!(name: 'Smoke Sensor', price: 19.99)
Item.create!(name: 'Water Leak Sensor', price: 14.99)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pin_categories = ["trash", "natural disaster", "chemical spill", "bio waste", "vandalism"]
medals = ["Bronze", "Silver", "Gold"]
tiers = ["two", "five", "ten"]
percent_complete = ["10", "25", "50", "75", "100",]
image_id = 0
pin_categories.each { |category|
  medals.each_with_index { |medal, index|
  Badge.create(name: "#{category}".capitalize, description: "You placed #{tiers[index]} #{category} pins.", category: "Reporting", medal: "#{medal}", image_id: image_id += 1)}}
medals.each_with_index { |medal, index|
  Badge.create(name: "Active Logger", description: "You logged in #{tiers[index]} times!", category: "Login", medal: "#{medal}", image_id: image_id += 1)}
medals.each_with_index { |medal, index|
  Badge.create(name: "Always On", description: "You logged in #{tiers[index]} consecutive times!", category: "Conscutive Logins", medal: "#{medal}", image_id: image_id += 1)}
medals.each_with_index { |medal, index|
  Badge.create(name: "Globetrotter", description: "You visited #{tiers[index]} areas!", category: "Different Areas", medal: "#{medal}", image_id: image_id += 1)}
percent_complete.each_with_index { |percent, index|
  Badge.create(name: "Completionist", description: "You received #{percent}% of the badges!", category: "Completionist", medal: "Gold", image_id: image_id += 1)}
Badge.create(name: "Account Association", description: "You are a Gold User!", category: "Account Association", medal: "Gold", image_id: image_id += 1)

require 'faker'
Carb.destroy_all
Protein.destroy_all
User.destroy_all
Vegetable.destroy_all
Result.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    
  Carb.create(name: "Lentils", whole_grain: true, cal_per_gram: 3)
  Carb.create(name: "Sweet Potatoes", whole_grain: true, cal_per_gram: 7)
  Carb.create(name: "Brown Rice", whole_grain: true, cal_per_gram: 4)
  Carb.create(name: "Navy Beans", whole_grain: true, cal_per_gram: 6)
  Carb.create(name: "Chestnuts", whole_grain: true, cal_per_gram: 5)


  Protein.create(name: "Chicken", vegetarian: false, cal_per_gram: 16)
  Protein.create(name: "Turkey", vegetarian: false, cal_per_gram: 18)
  Protein.create(name: "Beef", vegetarian: false, cal_per_gram: 14)
  Protein.create(name: "Lamb", vegetarian: false, cal_per_gram: 17)
  Protein.create(name: "Pork", vegetarian: false, cal_per_gram:19)

  puts "creating_users"
  5.times do
    User.create(name: Faker::Name.first_name, password: "password",  age: rand(18..80), gender: Faker::Gender.binary_type, weight: rand(90..350), height: rand(5.0..6.7), email: Faker::Internet.email )
   end
   puts "creating_vegetables"
   5.times do
       Vegetable.create(name: Faker::Food.vegetables, cal_per_gram: rand(1..3))
   end

   5.times do 
    Result.create(user_id: User.all.sample.id, vegetable_id: Vegetable.all.sample.id, carb_id: Carb.all.sample.id, protein_id: Protein.all.sample.id )

   end

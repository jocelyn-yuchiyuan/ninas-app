# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Matching.destroy_all
puts "Seeding something"
puts "destroying matchings"
Pet.destroy_all
puts "destroying users"
User.destroy_all
alphabet = ('a'..'z').to_a
pet_name = ["lucky", "miko","piano", "mimi","yukimi"]
location = ["shibuya","meguro","shinjuku", "gotanda", "mejiro", "ikebukuro", "shimokitazawa"]
breed= ["cat", "dog", "bunny"]
first_name  = ["John", "Jake", "Melanie", "Jane", "Timothy", "Alfred", "Jessica"]
last_name = ["Alaska", "Robinson", "Johnson", "Kim", "Yamada", "Balona", "Wen"]

file =  URI.open('https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_1280.jpg')
photo = Photo.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

5.times do
  getuser = User.new(
    first_name: first_name.sample,
    last_name: last_name.sample,
    password:"123123"
  )
  getuser.email = "#{getuser.first_name}.#{getuser.last_name}#{rand(0..99)}@pet.com"
  getuser.save!

  Pet.create!(
    name: "#{pet_name.sample}",
    profile: "I am cute, nice and the most caring pet ever",
    breed: breed.sample,
    age: rand(0..15),
    user:  getuser,
    photo: URI.open('https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_1280.jpg')
  )

end
puts "You have #{User.count} users!"
puts "You have #{Pet.count} pets!"

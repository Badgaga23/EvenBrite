# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
User.destroy_all
User.reset_pk_sequence
Event.destroy_all
Event.reset_pk_sequence

a = 0
10.times do
  a += 1
  User.create(email: "cestmoileshctrumphlala#{a}@yopmail.com", password: "azerty", password_confirmation: "azerty")
end

Event.create(start_date: "2020-11-20 11:12:25", duration: 250, title: "Grande ronde pour tourner autour du pot", description: "Venez tous à la grande ronde organisé ce week-end pour tourner autour du pot !", price: 1, location: "Paris", admin: User.last)

Event.create(start_date: "2020-11-21 11:12:25", duration: 100, title: "Soirée mousse en l'honneur de Pierre Kiroule", description: "Grande soirée mousse dans le plus grand club de la région, en l'honneur de Pierre Kiroule !", price: 1, location: "Lille", admin: User.last)

Event.create(start_date: "2020-11-27 11:12:25", duration: 100, title: "Grande manifestation pour que Gandalf nous laisse passer", description: "Grande manifestation pacifique pour que Gandalf nous laisse enfin passer, parce que bon au bout d'un moment y en à marre quand même.. ", price: 1, location: "Nantes", admin: User.first)

Event.create(start_date: "2020-11-30 11:12:25", duration: 500, title: "Grande vente de fourrure pour reprendre du poil de la bête", description: "Venez à notre grande vente de fourrure pour reprendre du poil de la bête, parce que je sais pas si t'as vu ta tête mais t'en as bien besoin !", price: 1, location: "Montpellier", admin: User.first)
=======
require 'faker'
require 'date'


User.destroy_all
Event.destroy_all
Attendance.destroy_all

array_user = []
array_event = []
array_att = []
duration = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60]


20.times do |index|
    array_user << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Movies::Hobbit.quote, email: index.to_s + "@yopmail.com", password:"youcef")
end

10.times do
    array_event << Event.create(start_date: Faker::Time.between(from: Time.now,to: 7.days.from_now), duration: duration.sample, title: Faker::Movies::StarWars.planet, description: Faker::Lorem.sentence, price: rand(1..1000), location: Faker::Address.city, user: array_user.sample)
end

30.times do 
    array_att << Attendance.create(user: array_user.sample, event: array_event.sample)
end
>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5

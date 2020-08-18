# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hair.destroy_all
User.destroy_all
User1 = { name: "Chewbacca", address: "48 allée du Blaster KASHYYYK", phone: "01 81 18 89 98", email: "cheewy@gmail.com", password: "123456" }
User2 = { name: "Kal Drogo", address: "21 impasse du sud ESSOS", phone: "01 90 76 10 98",  email: "iloveKhalheesi@gmail.com", password: "123456" }
User3 = { name: "Sulli", address: "104 place Louis Armand MONSTROPOLIS", phone: "01 23 66 90 45", email: "jesuisgentil@gmail.com", password: "123456" }
User4 = { name: "Robinson Cruzoe", address: "Ile paumé dans le Pacifique", phone: "01 81 18 89 98", email: "clamerde@wanadoo.com", password: "123456" }
User5 =  { name: "Tormund Giantsbane", address: "Beyond the Wall", phone: "01 81 18 89 98", email: "french", password: "123456" }
[ User1, User2, User3, User4 ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.name}"
end

hair1 = Hair.create!(user: User.first)
location1 = Location.create!(user: User.last, hair: hair1, start_date: Date.today, end_date: Date.tomorrow)

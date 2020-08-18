
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Locations..."
Location.destroy_all

puts "Cleaning Hairs..."
Hair.destroy_all

puts "Cleaning Users..."
User.destroy_all



puts "Creating users..."

User1 = { name: "Chewbacca", address: "48 allée du Blaster KASHYYYK", phone: "01 81 18 89 98", email: "cheewy@gmail.com", password: "123456" }
User2 = { name: "Kal Drogo", address: "21 impasse du sud ESSOS", phone: "01 90 76 10 98",  email: "iloveKhalheesi@gmail.com", password: "123456" }
User3 = { name: "Sulli", address: "104 place Louis Armand MONSTROPOLIS", phone: "01 23 66 90 45", email: "jesuisgentil@gmail.com", password: "123456" }
User4 = { name: "Robinson Cruzoe", address: "Ile paumé dans le Pacifique", phone: "01 81 18 89 98", email: "clamerde@wanadoo.com", password: "123456" }
User5 =  { name: "Tormund Giantsbane", address: "Beyond the Wall", phone: "01 81 18 89 98", email: "brianforever@westeros.com", password: "123456" }

users = []


[ User1, User2, User3, User4, User5 ].each do |attributes|
  users << User.create!(attributes)
end
puts "Created #{User.count} users"

puts "Creating hairs"
Hairs1 = { user_id: users[0].id , title:"Chevelure chocolat soyeuse et ondulée", description: "Une belle touffe brune pour les amateurs de poils longs", color: "marron", nature: "frisé", quantity: "1 000 000", hair_length: "2 m", status: true, price: 10000 }
Hairs2 = { user_id: users[1].id , title:"Chevelure sauvage et coquine", description:"Une chevelure pour les guerriers, les vrais", color:"noir", nature:"raide", quantity:"200 000", hair_length:"90 cm", status: true, price: 5000 }
Hairs3 = { user_id: users[2].id , title:"Chevelure d'un autre monde", description:"Prêt pour faire flipper les gosses ?", color:"bleu", nature:"ondulé", quantity:"500 000", hair_length:"1m20", status: true, price: 8000 }
Hairs4 = { user_id: users[3].id, title:"Chevelure perdue", description:"Une chevelure faites pour les aventurier !", color:"marron", nature:"frisé", quantity:"100 000", hair_length:"50cm", status: true, price: 2000 }
Hairs5 = { user_id: users[4].id , title:"Chevelure nordique", description:"Vous êtes prêt pour traverser l'hiver !", color:"roux", nature:"ondulé", quantity:"50 000", hair_length:"40 cm", status: true, price: 3500 }


[ Hairs1, Hairs2, Hairs3, Hairs4, Hairs5 ].each do |attributes|
  hair = Hair.create!(attributes)
  puts "Created #{hair.title}"
end
puts "Finished!"


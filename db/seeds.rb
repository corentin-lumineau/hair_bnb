
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

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
User6 =  { name: "Elsa", address: "Royaume des neiges", phone: "01 81 18 89 98", email: "elsa@gmail.com", password: "123456" }
User7 =  { name: "Cruella", address: "London", phone: "01 81 15 89 45", email: "dalmatien@mechante.com", password: "123456" }
User8 =  { name: "Danaerys", address: "Westos", phone: "01 32 18 20 98", email: "dragons@westeros.com", password: "123456" }
User9 =  { name: "Scarlett", address: "United States Of America", phone: "01 23 90 22 10", email: "atomicblonde@unitedstates.com", password: "123456" }
User10 =  { name: "Reine Rouge", address: "Pays des Merveilles", phone: "01 22 33 05 22", email: "pascontente@wonderland.com", password: "123456" }
users = []
photos = [
  "http://fr.web.img3.acsta.net/r_640_360/newsv7/19/12/19/18/02/0758868.jpg",
  "https://assets.cineserie.com/wp-content/uploads/2016/08/Khal-Drogo.jpg",
  "https://djoul3.pagesperso-orange.fr/monstres&cie/personnages/sulli/sulli.JPG",
  "https://ds1.static.rtbf.be/article/image/1240x800/5/7/5/563ab6ef8b9a78d2fef771a0b6e17f79-1490608783.jpg",
  "https://upload.wikimedia.org/wikipedia/en/2/29/Tormund_Giantsbane_Profile_Kristopher_Hivju.jpg",
  "https://i.pinimg.com/originals/a8/d4/33/a8d4332ad10ff1e542523b8fe0b1e727.png",
  "https://images.bfmtv.com/DYFlNxmN4PC82W9M7nkeIYOqdR8=/0x0:1280x720/1280x0/images/-83413.jpg",
  "https://img.static-rmg.be/a/view/q75/w/h/1983872/daenerys-png.png",
  "https://fr.web.img3.acsta.net/c_215_290/pictures/19/03/14/11/10/0992674.jpg",
  "https://amp.agoravox.fr/local/cache-vignettes/L415xH314/RD-5e917.jpg"
]

[ User1, User2, User3, User4, User5, User6, User7, User8, User9, User10 ].each_with_index do |attributes, index|
  current_user = User.create!(attributes)
  file = URI.open(photos[index])
  current_user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
  users << current_user
end
puts "Created #{User.count} users"

puts "Creating hairs"
Hairs1 = { user_id: users[0].id , title:"Chevelure chocolat soyeuse et ondulée", description: "Une belle touffe brune pour les amateurs de poils longs", color: "brun", nature: "boucle", quantity: "1 000 000", hair_length: "2 m", status: true, price: 10000 } #soins: "Appliquer 3 fois par jour un max de shampoo et prier"  }
Hairs2 = { user_id: users[1].id , title:"Chevelure sauvage et coquine", description:"Une chevelure pour les guerriers, les vrais", color:"noir", nature:"raide", quantity:"200 000", hair_length:"90 cm", status: true, price: 5000,} #soins: "Un guerrier ne prends pas soins de ses cheveux : c'est un guerrier merde !" }
Hairs3 = { user_id: users[2].id , title:"Chevelure d'un autre monde", description:"Prêt pour faire flipper les gosses ?", color:"bleu", nature:"ondule", quantity:"500 000", hair_length:"1m20", status: true, price: 8000,} #soins: "Appliquer de l'huile essentielle de schtroumpf 2 fois par semaine"  }
Hairs4 = { user_id: users[3].id, title:"Chevelure perdue", description:"Une chevelure faites pour les aventurier !", color:"chatain", nature:"boucle", quantity:"100 000", hair_length:"50cm", status: true, price: 2000,} #soins: "Badigeonner d'huile de coco tous les matins et laisser sécher au grand air" }
Hairs5 = { user_id: users[4].id , title:"Chevelure nordique", description:"Vous êtes prêt pour traverser l'hiver !", color:"roux", nature:"crepu", quantity:"50 000", hair_length:"40 cm", status: true, price: 3500,} #soins: "Asperger de véritable transpiration tous les jours matin midi et soirs afin de conserver une véritable chevelure nordique qui pue !" }


[ Hairs1, Hairs2, Hairs3, Hairs4, Hairs5 ].each do |attributes|
  hair = Hair.create!(attributes)
  puts "Created #{hair.title}"
end
puts "Finished!"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destruction de la base de donnée"

Invitation.destroy_all
Spending.destroy_all
Budget.destroy_all
Album.destroy_all
Event.destroy_all
User.destroy_all

puts "Début des seeds"

joy = User.new(first_name: "Joy",
                last_name: "Klasen",
                password: "azerty",
                email: "joy.klasen@gmail.com",
                phone_number: "603992195",
                address: "83 rue Abbé de l'épée 13005 Marseille",
                admin: true)
file_joy = URI.open("https://res.cloudinary.com/dct6y4tya/image/upload/v1670333769/production/btabedm6diu4uu6062jys1q46bl5.jpg")
joy.photo.attach(io: file_joy, filename: "nes.png", content_type: "image/png")
joy.save!

adrien = User.new(first_name: "Adrien",
  last_name: "Mery-Costa",
  password: "azerty",
  email: "psnw.adrien@gmail.com",
  phone_number: "678495182",
  address: "116 avenue Jules Cantini 13008 Marseille",
  admin: true)
  file_adrien = URI.open("https://ca.slack-edge.com/T02NE0241-U045B930LBH-f80d10bf13ad-512")
adrien.photo.attach(io: file_adrien, filename: "nes.png", content_type: "image/png")
adrien.save!

julien = User.new(first_name: "Julien",
  last_name: "Nakad",
  password: "azerty",
  email: "julien.nakad@gmail.com",
  phone_number: "635297939",
  address: "8 rue Alexandre Pieyre 30900 Nîmes",
  admin: true)
file_julien = URI.open("https://res.cloudinary.com/dct6y4tya/image/upload/v1670410080/production/3u0f2h0m1yo667etcxte3mctpgkz.jpg")
julien.photo.attach(io: file_julien, filename: "nes.png", content_type: "image/png")
julien.save!

helene = User.new(first_name: "Hélène",
  last_name: "Briand",
  password: "azerty",
  email: "helene.briand@gmail.com",
  phone_number: "684529763",
  address: "21 rue Haxo Marseille",
  admin: true)
  file_helene = URI.open("https://ca.slack-edge.com/T02NE0241-U045Q9QCZN1-1ca44cf47236-512")
  helene.photo.attach(io: file_helene, filename: "nes.png", content_type: "image/png")
helene.save!

nicolas = User.new(first_name: "Nicolas",
  last_name: "Fornaro",
  password: "azerty",
  email: "nicolas.fornaro@gmail.com",
  phone_number: "673871988",
  address: "21 rue Haxo Marseille",
  admin: true)
  file_nicolas = URI.open("https://ca.slack-edge.com/T02NE0241-U045P15M0BF-36cef507256f-512")
  nicolas.photo.attach(io: file_nicolas, filename: "nes.png", content_type: "image/png")
nicolas.save!

antoine = User.new(first_name: "Antoine",
                    last_name: "Mauriac",
                    password: "azerty",
                    email: "antoine.mauriac@gmail.com",
                    phone_number: "626803401",
                    address: "21 rue Haxo Marseille",
                    admin: true)
                    file_antoine = URI.open("https://ca.slack-edge.com/T02NE0241-U0464CHFCG1-9f9c5616aa4e-512")
                    antoine.photo.attach(io: file_antoine, filename: "nes.png", content_type: "image/png")
antoine.save!

10.times do
  user = User.new(first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: "azerty",
          email: Faker::Internet.email,
          phone_number: Faker::PhoneNumber.cell_phone,
          address: "21 rue Haxo Marseille",
          admin: true)
  user.save!
end

wedding_julien = Event.new(start_date: DateTime.new(2022,9,10,15,0,0),
                        end_date: DateTime.new(2022,9,11,9,0,0),
                        category: "Mariage",
                        description: "C’est officiel on se marie !

                        Rejoignez-nous à la Marie du 2ème arrondissement de Lyon à 15 heures 45 pour fêter cet événement majeur.

                        Un vin d’honneur sera servi au château des Vignes à partir de 17 heures 30.

                        S’ensuivront un repas et une soirée de folie pour célébrer les tout jeunes mariés. »

                        « Dans nos cœurs notre amour rime déjà avec toujours. Et aujourd’hui, nous voulons qu’il s’inscrive dans l’histoire de la République.

                        Notre mariage civil aura lieu le 10 septembre 2022 à la mairie de Meynes à 15 heures.

                        Nous vous invitons à être les témoins de notre amour et de notre union.

                        À la suite de la cérémonie nous nous dirigerons vers le domaine de Sotil pour poursuivre la fête jusqu’au bouquet final.",
                        address: "Chateau saint louis la perdrix Bellegarde",
                        title: "Mariage de Léa et Julien",
                        user_id: julien.id)
                        file_birthday_julien = URI.open("https://res.cloudinary.com/dct6y4tya/image/upload/v1670507704/Le%CC%81aetJulien-galerie-_ponthus.nancy-460_m52qnd.jpg")
                        wedding_julien.photo.attach(io: file_birthday_julien, filename: "nes.png", content_type: "image/png")
wedding_julien.save!

birthday_joy = Event.new(start_date: DateTime.new(2023,4,28,18,0,0),
                        end_date: DateTime.new(2023,4,29,9,0,0),
                        category: "Anniversaire",
                        description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.",
                        address: "Tour Eiffel Paris",
                        title: "30 ans de Joy",
                        user_id: joy.id)
                        file_birthday_joy = URI.open("https://res.cloudinary.com/dct6y4tya/image/upload/v1670508187/dominik-kempf-9V2g8W16F50-unsplash_xneesz.jpg")
                        birthday_joy.photo.attach(io: file_birthday_joy, filename: "nes.png", content_type: "image/png")
birthday_joy.save!

invitation = Invitation.new(user: julien,
  event: birthday_joy,
  status: true,
  partner: true,
  comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
invitation.save!

puts "invit anniv joy"
38.times do
  invitation = Invitation.new(user: adrien,
    event: birthday_joy,
    status: true,
    partner: true,
    comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
  invitation.save!
end

puts "invit wedding"
150.times do
  invitation_wedding = Invitation.new(user: joy,
    event: wedding_julien,
    status: true,
    partner: true,
    comment: "")
  invitation_wedding.save!
end

budget_first = Budget.new(initial_budget: 20000,
                          remaining_budget: 20000,
                          event: wedding_julien)
budget_first.save!

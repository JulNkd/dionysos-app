# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

User.destroy_all
Event.destroy_all
Invitation.destroy_all

user = User.new(first_name: "Joy",
                last_name: "Klasen",
                password: "azerty",
                email: "jlksn@gmail.com",
                phone_number: "0678273867",
                address: "21 rue Haxo",
                admin: true)
user.save!

event = Event.new(start_date: DateTime.new(2022,2,3,4,5,6),
                  end_date: DateTime.new(2023,2,3,4,5,6),
                  category: "Wedding",
                  description: "super mariage de ouf de Joy",
                  address: "Place Castellane",
                  album: "Mon album photo",
                  title: "Mariage de Joy KLSN"
                )
event.save!

# invitation = Invitation.new(user_id: user,
#                             event_id:
#                             status: true,
#                             partner: true,
#                             comment: "blablabla",
#                           )

# invitation.save!

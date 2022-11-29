# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

User.destroy_all
Location.destroy_all
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

location = Location.new(address: "Vieux Port Marseille",
                        capacity: 40,
                        price: 250.5,
                        availabity: true,
                        visibility: true,)
location.save!

event = Event.new(start_date: 2001-02-04%21:35:06+09:00,
                  end_date: 2001-02-04%16:05:06+03:30,
                  category: "Wedding",
                  description: "super mariage de ouf de Joy",
                  address: "Place Castellane",
                  album: "Mon album photo",
                  title: "Mariage de Joy KLSN"
                )
event.save!

invitation = Invitation.new()

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Invitation.destroy_all
Spending.destroy_all
Budget.destroy_all
Album.destroy_all
Event.destroy_all
User.destroy_all

joy = User.new(first_name: "Joy",
                      last_name: "Klasen",
                      password: "azerty",
                      email: "joy.klasen@gmail.com",
                      phone_number: "603992195",
                      address: "83 rue Abbé de l'épée 13005 Marseille",
                      admin: true)
joy.save!

adrien = User.new(first_name: "Adrien",
  last_name: "Mery-Costa",
  password: "azerty",
  email: "psnw.adrien@gmail.com",
  phone_number: "678495182",
  address: "116 avenue Jules Cantini 13008 Marseille",
  admin: true)
adrien.save!

julien = User.new(first_name: "Julien",
  last_name: "Nakad",
  password: "azerty",
  email: "julien.nakad@gmail.com",
  phone_number: "635297939",
  address: "8 rue Alexandre Pieyre 30900 Nîmes",
  admin: true)
julien.save!

event_first = Event.new(start_date: DateTime.new(2022,2,3,4,5,6),
                        end_date: DateTime.new(2023,2,3,4,5,6),
                        category: "Wedding",
                        description: "super mariage de ouf de Joy",
                        address: "Place Castellane",
                        title: "Mariage de Joy KLSN",
                        user_id: julien.id)
event_first.save!

invitation = Invitation.new(user: joy,
                            event: event_first,
                            status: true,
                            partner: true,
                            comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
invitation.save!

invitation_second = Invitation.new(user: julien,
  event: event_first,
  status: true,
  partner: true,
  comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
invitation_second.save!

budget_first = Budget.new(initial_budget: 1000,
                          remaining_budget: 1000,
                          event: event_first)
budget_first.save!

spending = Spending.new(amount: 30.0,
                        category: "champagne",
                        date: Date.new(2022, 9, 5),
                        event: event_first)
spending.save!

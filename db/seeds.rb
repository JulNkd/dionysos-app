# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Invitation.destroy_all
User.destroy_all
Spending.destroy_all
Event.destroy_all
Budget.destroy_all

user = User.new(first_name: "Joy",
                last_name: "Klasen",
                password: "azerty",
                email: "jlksn@gmail.com",
                phone_number: "0678273867",
                address: "21 rue Haxo",
                admin: true)
user.save!

event_first = Event.new(start_date: DateTime.new(2022,2,3,4,5,6),
                        end_date: DateTime.new(2023,2,3,4,5,6),
                        category: "Wedding",
                        description: "super mariage de ouf de Joy",
                        address: "Place Castellane",
                        album: "Mon album photo",
                        title: "Mariage de Joy KLSN")
event_first.save!

invitation = Invitation.new(user_id: user.id,
                            event: event_first,
                            status: true,
                            partner: true,
                            comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
invitation.save!

budget_first = Budget.new(initial_budget: 1000,
                          remaining_budget: 1000,
                          event: event_first)
budget_first.save!

spending = Spending.new(amount: 30.0,
                        category: "champagne",
                        date: Date.new(2022, 9, 5),
                        event: event_first)
spending.save!

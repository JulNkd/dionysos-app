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
Budget.destroy_all
Event.destroy_all

user_first = User.new(first_name: "Joy",
                      last_name: "Klasen",
                      password: "azerty",
                      email: "jlksn@gmail.com",
                      phone_number: "0678273867",
                      address: "21 rue Haxo",
                      admin: true)
user_first.save!

user_second = User.new(first_name: "Julien",
  last_name: "Naked",
  password: "azerty",
  email: "jul@gmail.com",
  phone_number: "0678273867",
  address: "21 rue Haxo",
  admin: true)
user_second.save!

<<<<<<< HEAD
user_third = User.new(first_name: "Adrien",
  last_name: "Meco",
  password: "azerty",
  email: "jul@gmail.com",
  phone_number: "0678273867",
  address: "21 rue Haxo",
  admin: true)
user_third.save!

=======
>>>>>>> bdada3620f958c65d1ab389793173ede2e845bfc
event_first = Event.new(start_date: DateTime.new(2022,2,3,4,5,6),
                        end_date: DateTime.new(2023,2,3,4,5,6),
                        category: "Wedding",
                        description: "super mariage de ouf de Joy",
                        address: "Place Castellane",
                        title: "Mariage de Joy KLSN")
event_first.save!

invitation = Invitation.new(user: user_first,
                            event: event_first,
                            status: true,
                            partner: true,
                            comment: "J'ai trop hâte d'être invité à ton mariage Joy xD ^^")
invitation.save!

invitation_second = Invitation.new(user: user_second,
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

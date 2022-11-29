class Budget < ApplicationRecord
  has_many :spendings
<<<<<<< HEAD
  has_one :budget through :spendings
=======
  belongs_to :event
>>>>>>> 3f58b39a1b4dca74cfa9e517a3cad5670ef00c3a
end

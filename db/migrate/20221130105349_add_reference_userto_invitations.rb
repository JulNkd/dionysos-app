class AddReferenceUsertoInvitations < ActiveRecord::Migration[7.0]
  def change
    add_reference :invitations, :user, null: true, foreign_key: true
  end
end

class ChangeReferenceUserInInvitations < ActiveRecord::Migration[7.0]
  def change
    remove_reference :invitations, :user, null: false, foreign_key: true
  end
end

class ChangeLocationColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :locations, :availabity, :availability
  end
end

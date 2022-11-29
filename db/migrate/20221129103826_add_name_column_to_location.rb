class AddNameColumnToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :name, :string
  end
end

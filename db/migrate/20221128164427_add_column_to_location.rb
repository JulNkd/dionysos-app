class AddColumnToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :visibility, :boolean
  end
end

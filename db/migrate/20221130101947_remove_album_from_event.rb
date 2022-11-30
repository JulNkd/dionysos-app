class RemoveAlbumFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :album
  end
end

class RemoveFavoriteColumnFromSongsTable < ActiveRecord::Migration
  def change
    remove_column :songs, :favorite
  end
end

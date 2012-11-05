class AddSongIdAndUserIdToFavoritesTable < ActiveRecord::Migration
  def change
    add_column :favorites, :song_id, :integer
    add_column :favorites, :user_id, :integer
  end
end

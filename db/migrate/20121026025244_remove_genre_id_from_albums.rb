class RemoveGenreIdFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :genre_id
  end
end

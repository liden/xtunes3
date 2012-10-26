class DropAlbumsArtistsJoinTable < ActiveRecord::Migration
  def change
    drop_table :albums_artists
  end
end

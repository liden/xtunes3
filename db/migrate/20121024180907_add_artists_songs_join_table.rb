class AddArtistsSongsJoinTable < ActiveRecord::Migration
  def change
  	create_table :artists_songs, :id => fals do |t|
  		t.integer :artist_id
      t.integer :song_id
  end
end

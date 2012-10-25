class AddSongIdToPurchasesTable < ActiveRecord::Migration
  def change
  	add_column :purchases, :song_id, :integer
  end
end

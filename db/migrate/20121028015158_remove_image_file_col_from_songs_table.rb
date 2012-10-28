class RemoveImageFileColFromSongsTable < ActiveRecord::Migration
  def change
    remove_column :songs, :cover_file
    add_column :albums, :cover_file, :string
  end
end

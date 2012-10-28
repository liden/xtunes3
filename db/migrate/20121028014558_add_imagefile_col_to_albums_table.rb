class AddImagefileColToAlbumsTable < ActiveRecord::Migration
  def change
    add_column :songs, :cover_file, :string
  end
end

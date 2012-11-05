class RenameFavesTableToFavoritesTable < ActiveRecord::Migration
  def change
    rename_table :faves, :favorites
  end
end

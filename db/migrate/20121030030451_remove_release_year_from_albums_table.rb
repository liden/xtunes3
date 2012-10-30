class RemoveReleaseYearFromAlbumsTable < ActiveRecord::Migration
  def change
    remove_column :albums, :release_year
    add_column :users, :release, :date
  end
end
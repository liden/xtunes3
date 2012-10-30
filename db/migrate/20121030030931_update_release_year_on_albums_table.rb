class UpdateReleaseYearOnAlbumsTable < ActiveRecord::Migration
  def change
    remove_column :users, :release
    add_column :albums, :release, :date
  end
end

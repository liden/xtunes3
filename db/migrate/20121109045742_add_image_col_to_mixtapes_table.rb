class AddImageColToMixtapesTable < ActiveRecord::Migration
  def change
    add_column :mixtapes, :mximg_file, :string
  end
end

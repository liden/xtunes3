class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :dob
      t.text :bio
      t.string :photo

      t.timestamps
    end
  end
end

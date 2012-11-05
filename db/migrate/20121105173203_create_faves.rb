class CreateFaves < ActiveRecord::Migration
  def change
    create_table :faves do |t|
      t.boolean :favorite, :default => false

      t.timestamps
    end
  end
end

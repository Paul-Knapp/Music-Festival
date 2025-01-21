class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.string :artist
      t.string :location
      t.string :date
      t.integer :time

      t.timestamps
    end
  end
end

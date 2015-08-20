class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.text :one
      t.text :two
      t.text :three
      t.text :four
      t.text :five

      t.timestamps
    end
  end
end

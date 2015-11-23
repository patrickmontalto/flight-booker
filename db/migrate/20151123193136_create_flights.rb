class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :finish_id
      t.datetime :departure_time
      t.float :duration

      t.timestamps null: false
    end
  end
end

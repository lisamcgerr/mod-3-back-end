class CreateItineraries < ActiveRecord::Migration[6.1]
  def change
    create_table :itineraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true
      t.datetime :date_time
      t.string :note

      t.timestamps
    end
  end
end

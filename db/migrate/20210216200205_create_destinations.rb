class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :attraction
      t.string :hotel
      t.string :restaurant

      t.timestamps
    end
  end
end

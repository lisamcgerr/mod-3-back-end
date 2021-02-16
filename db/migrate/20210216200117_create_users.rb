class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end

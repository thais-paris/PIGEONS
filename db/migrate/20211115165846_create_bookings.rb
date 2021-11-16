class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :adress
      t.date :date
      t.text :message
      t.string :recipient_name
      t.boolean :option_droppings
      t.boolean :option_cooing

      t.timestamps
    end
  end
end

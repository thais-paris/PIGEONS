class ChangeOptionDroppingsToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :option_droppings, :boolean, default: false
  end
end

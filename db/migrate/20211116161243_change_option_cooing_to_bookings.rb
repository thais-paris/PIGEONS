class ChangeOptionCooingToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :option_cooing, :boolean, default: false
  end
end

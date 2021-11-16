class ChangeAdressToAddressInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :adress, :address
  end
end

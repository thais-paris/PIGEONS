class AddCoordinatesToPigeons < ActiveRecord::Migration[6.0]
  def change
    add_column :pigeons, :latitude, :float
    add_column :pigeons, :longitude, :float
  end
end

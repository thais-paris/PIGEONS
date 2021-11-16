class CreatePigeons < ActiveRecord::Migration[6.0]
  def change
    create_table :pigeons do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :breed
      t.float :price_day

      t.timestamps
    end
  end
end

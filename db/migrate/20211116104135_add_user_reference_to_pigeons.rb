class AddUserReferenceToPigeons < ActiveRecord::Migration[6.0]
  def change
    add_reference :pigeons, :user, null: false, foreign_key: true
  end
end

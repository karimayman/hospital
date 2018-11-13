class AddReservationToRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :relations, :reservation, :boolean
  end
end

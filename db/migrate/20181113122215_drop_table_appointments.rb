class DropTableAppointments < ActiveRecord::Migration[5.2]
  def change
    drop_table :appointments
  end
end

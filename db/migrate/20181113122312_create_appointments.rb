class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.integer :start_time
      t.integer :end_time
      t.datetime :day

      t.timestamps
    end
  end
end

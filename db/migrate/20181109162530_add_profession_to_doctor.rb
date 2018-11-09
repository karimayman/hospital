class AddProfessionToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :profession, :string
  end
end

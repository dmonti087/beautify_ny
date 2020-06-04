class AddParkToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :park_id, :integer
    add_index :volunteers, :park_id
  end
end

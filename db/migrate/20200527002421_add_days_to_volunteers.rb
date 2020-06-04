class AddDaysToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :days, :string
  end
end

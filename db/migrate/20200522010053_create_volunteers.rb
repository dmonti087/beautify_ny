class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :park_choice
      t.integer :hours
      t.boolean :professional
      t.text :notes

      t.timestamps
    end
  end
end

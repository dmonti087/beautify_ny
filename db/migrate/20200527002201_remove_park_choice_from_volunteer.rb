class RemoveParkChoiceFromVolunteer < ActiveRecord::Migration[5.2]
  def change
    remove_column :volunteers, :park_choice, :string
  end
end

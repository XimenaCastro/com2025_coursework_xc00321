class RemoveActivityIdFromCountries < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :activity_id, :integer
  end
end

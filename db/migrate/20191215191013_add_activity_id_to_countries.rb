class AddActivityIdToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :activity_id, :integer
  end
end

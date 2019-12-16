class RemoveCountryFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :country, :string
  end
end

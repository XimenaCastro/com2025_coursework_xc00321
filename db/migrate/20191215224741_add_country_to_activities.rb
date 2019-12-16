class AddCountryToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :country, :string
    add_column :activities, :belongs_to, :string
  end
end

class AddCountryToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :country, foreign_key: true
  end
end

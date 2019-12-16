class RemoveActivityIdFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :activity_id, :integer
  end
end

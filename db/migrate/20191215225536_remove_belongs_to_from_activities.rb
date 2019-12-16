class RemoveBelongsToFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :belongs_to, :string
  end
end

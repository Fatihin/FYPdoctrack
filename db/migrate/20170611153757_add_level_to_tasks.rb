class AddLevelToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :level, :string
  end
end

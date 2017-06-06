class AddDatetocompleteToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :datetocomplete, :date
  end
end

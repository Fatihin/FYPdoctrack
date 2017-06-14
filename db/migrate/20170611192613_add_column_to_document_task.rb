class AddColumnToDocumentTask < ActiveRecord::Migration[5.0]
  def change
  	add_column :document_tasks , :document_id, :integer
  	add_column :document_tasks , :task_id, :integer
  end
end

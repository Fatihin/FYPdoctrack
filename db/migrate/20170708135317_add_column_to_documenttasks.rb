class AddColumnToDocumenttasks < ActiveRecord::Migration[5.0]
  def change
  	add_column :document_tasks, :accept, :boolean
  	add_column :document_tasks, :status, :string
  	add_column :document_tasks, :location, :string
  	add_column :document_tasks, :datecomplete, :datetime

  end
end

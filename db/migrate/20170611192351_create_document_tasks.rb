class CreateDocumentTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :document_tasks do |t|

      t.timestamps
    end
  end
end

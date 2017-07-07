class AddAssignmentToDocumentTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :document_task, foreign_key: true
  end
end

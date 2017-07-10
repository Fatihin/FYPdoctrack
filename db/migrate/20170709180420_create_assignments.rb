class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.boolean :accept
      t.string :location
      t.string :status
      t.datetime :datecomplete
      t.references :document_task, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.boolean :request_accept
      t.string :location
      t.string :status
      t.datetime :datecomplete
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end

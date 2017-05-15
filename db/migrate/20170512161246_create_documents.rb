class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :attachment
      t.text :desc
      t.string :serialno

      t.timestamps
    end
  end
end

class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :formid
      t.string :formname
      t.text :details
      t.integer :processingday

      t.timestamps
    end
  end
end

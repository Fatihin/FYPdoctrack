class Addcolumndocument < ActiveRecord::Migration[5.0]
  def change
  	add_column :documents, :serialno, :integer
  end
end

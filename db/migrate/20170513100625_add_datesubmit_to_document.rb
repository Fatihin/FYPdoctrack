class AddDatesubmitToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :datesubmit, :datetime
  end
end

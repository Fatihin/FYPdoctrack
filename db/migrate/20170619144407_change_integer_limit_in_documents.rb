class ChangeIntegerLimitInDocuments < ActiveRecord::Migration[5.0]
  def change
  	 change_column :documents, :serialno, :integer, limit: 8
  end
end

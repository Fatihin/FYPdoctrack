class AddAttachmentToForms < ActiveRecord::Migration[5.0]
  def change
    add_column :forms, :attachment, :string
  end
end

class Form < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader 
	has_many :documents
	has_many :tasks
	
end

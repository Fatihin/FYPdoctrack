class Document < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader 
	belongs_to :user
	belongs_to :form
	has_many :document_tasks
	has_many :task, through: :document_tasks #staffhep
	
	def serialno
		"#{user.try(:iduser)}#{form.try(:formid)}%.3d"%id.to_i
	end

	def self.search(search)
  		where("document.serialno LIKE ?", "%#{search}%")
  	
	end

end

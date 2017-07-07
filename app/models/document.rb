class Document < ApplicationRecord
	
	validates :form, presence: true
	validates :datesubmit, presence: true
	validates :title, presence: true
	mount_uploader :attachment, AttachmentUploader 
	belongs_to :user
	belongs_to :form
	has_many :document_tasks
	has_many :task, through: :document_tasks #staffhep
	
	before_save do
		self.serialno ="#{user.try(:iduser)}#{form.try(:formid)}%.3d"%id.to_i
	end

	def self.search(search)
  		where("documents.serialno LIKE ?", "%#{search}%")
  	
	end

end

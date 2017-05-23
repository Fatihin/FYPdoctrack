class Document < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader 
	belongs_to :user
	belongs_to :form

	def serialno
		"#{user.try(:iduser)} #{form.try(:formid)} %.3d" % id.to_i
	end

end

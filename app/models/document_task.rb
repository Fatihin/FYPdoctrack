class DocumentTask < ApplicationRecord
	belongs_to :task
	belongs_to :document
	has_one :assignment

	def self.search(search)
  	joins("inner join tasks on document_tasks.task_id = tasks.id inner join users on tasks.user_id = users.id")
  	.where("users.username LIKE ?", "%#{search}%")

end

end

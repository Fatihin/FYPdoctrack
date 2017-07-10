class Assignment < ApplicationRecord
  belongs_to :document_task

  def self.search(search)
  	joins("inner join document_tasks on assignments.document_task_id = document_tasks.id inner join documents on document_tasks.document_id = documents.id")
  	.where("documents.serialno LIKE ?", "%#{search}%")

	end
end

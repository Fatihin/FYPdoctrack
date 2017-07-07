class Assignment < ApplicationRecord

  belongs_to :task
  belongs_to :document_task

end

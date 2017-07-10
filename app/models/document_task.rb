class DocumentTask < ApplicationRecord
	belongs_to :task
	belongs_to :document
	has_one :assignment
end

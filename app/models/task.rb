class Task < ApplicationRecord

	belongs_to :user #staffhep
	belongs_to :form

	has_many :document_tasks
	has_many :documents, through: :document_tasks 

	resourcify

	def self.search(search)
  		where("forms.formid LIKE ?", "%#{search}%") 
	end


end

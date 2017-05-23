class Task < ApplicationRecord

	belongs_to :user
	belongs_to :form
	has_many :assignments
	
	resourcify

	def self.search(search)
  		where("forms.formid LIKE ?", "%#{search}%") 
	end


end

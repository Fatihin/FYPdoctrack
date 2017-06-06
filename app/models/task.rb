class Task < ApplicationRecord

	belongs_to :user
	belongs_to :form
	has_many :assignments
	after_touch :log_when_task_or_assignment_touched

	resourcify

	def self.search(search)
  		where("forms.formid LIKE ?", "%#{search}%") 
	end

	private
  	def log_when_task_or_assignment_touched
   		 flash[:alert] = 'Task was touched'
 	 end
end

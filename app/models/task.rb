class Task < ApplicationRecord
	belongs_to :user
	belongs_to :form
	
	resourcify

end

class Form < ApplicationRecord
	has_many :documents
	has_many :tasks
	
end

class Assignment < ApplicationRecord

  belongs_to :task,  dependent: :destroy

end

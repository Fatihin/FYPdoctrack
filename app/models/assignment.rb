class Assignment < ApplicationRecord

  belongs_to :task

  after_touch do
    flash[:alert] = 'Task was touched'
  end

end

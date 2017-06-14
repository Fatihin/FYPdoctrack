class AcceptdocJob < ApplicationJob
  queue_as :default

  def perform(assignment)
    # Do something later
    
  end
end

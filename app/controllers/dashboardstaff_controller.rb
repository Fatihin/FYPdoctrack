class DashboardstaffController < ApplicationController
  def index
  	 @doctask = DocumentTask.joins(:task).where("tasks.user_id =?",current_user)
  end

end

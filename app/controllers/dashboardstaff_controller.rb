class DashboardstaffController < ApplicationController
  def index
  	 @tasks = Task.where(user_id: current_user)
  	 
  	 if @tasks.length >= 0
      flash[:alert] = "You have task to complete."
    end

  end

end

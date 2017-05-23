class DashboardController < ApplicationController
	before_action :authenticate_user!

  def index
  	@tasks = Task.where(user_id: current_user)
  end
end

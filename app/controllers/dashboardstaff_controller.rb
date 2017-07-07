class DashboardstaffController < ApplicationController
  def index
    @task = Task.new
    @form = Form.find(params[:form])
    @document = Document.where(:form_id => @form)
    @task = Task.where(user_id: current_user)
          
  end

  def homestaff
  	@tasks = Task.where(user_id: current_user)
  	if @tasks.length > 0
  	 	flash[:notice]= 'You have to complete this task now'
  	 end
  end

  private
    def doctask_params 
      params.require(:document_task).permit(:document, :task)
    end

end

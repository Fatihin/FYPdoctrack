class DashboardstaffController < ApplicationController
  def index
    @task = Task.new
    @form = Form.find(params[:form])
    @document = Document.where(:form_id => @form)      
  end

  def homestaff
  	@tasks = Task.where(user_id: current_user)
  	if @tasks.length > 0
  	 	flash[:notice]= 'You have to complete this task now'
  	 end
  end

  def dotask
    @document_tasks = DocumentTask.all
  end

  def create
    @task = Task.new
    @task = Task.find_by(user_id: current_user)
    @task.documents<< Document.find(params[:id])
    @doctask = @task.document_tasks.maximum('id')

    @assignment = Assignment.new
    @assignment.document_task_id = @doctask
    @assignment.save


  end


end

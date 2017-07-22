class HomeController < ApplicationController
  def index
  	@documents = Document.all
  	@document = @documents.joins(:form)
  	@task = Task.all
	@t = @task.joins(:user,:form)
	@assignment = Assignment.all
	@user = User.all
	@doctask = DocumentTask.all

  end

  def KPI
    if params[:search]
      @doctask = DocumentTask.search(params[:search])
    end

    if params[:search].present? 
         flash[:notice]= 'No record found'
      end

  end



end

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

  def timeline
  	@assignments = Assignment.all
       if params[:search2]
        @assignments = Assignment.search(params[:search]).order("created_at DESC")
      else
      @assignments = Assignment.all.order('created_at DESC')
      end
  end
end

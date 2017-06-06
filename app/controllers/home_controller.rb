class HomeController < ApplicationController
  def index
  	@documents = Document.all
  	@document = @documents.joins(:form)
  	@task = Task.all
	@t = @task.joins(:user,:form)
	@assignment = Assignment.all
	@user = User.all
  end
end

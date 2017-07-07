class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  # GET /assignments
  # GET /assignments.json
  def index
    @task = Task.find(params[:task_id])
    @assignments = @task.assignments
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @task = Task.find(params[:task_id])
    @assignment = @task.assignments.first

  end

  # GET /assignments/new
  def new
    @task = Task.find(params[:task_id])
    @assignment = Assignment.new

  end

  # GET /assignments/1/edit
  def edit
    @task = Task.find(params[:task_id])
    @assignment = Assignment.find(params[:id])

  end

  # POST /assignments
  # POST /assignments.json
  def create
    @task = Task.find(params[:task_id])
    @assignment = @task.assignments.new(assignment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to task_assignments_path, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    @task = Task.find(params[:task_id])
    @assignment = @task.assignments
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to assignment_params, notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @task = Task.find(params[:task_id])
    @assignment = @task.assignments
    @assignment.destroy
       redirect_to task_assignments_url, notice: 'Assignment was successfully destroyed.' 

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:request_accept, :location, :status, :datecomplete, :task_id, :document_task_id)
    end
end

class DocumentsController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
 load_and_authorize_resource
 skip_authorize_resource :only => [:moreinfodoc, :trackdoc]
  # GET /documents
  # GET /documents.json
  def index
  
    if can? :manage, Document
       @documents = Document.all
     else
        @documents = Document.where(user_id: current_user)
    end 
    @form = Form.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @document = Document.find(params[:id])
  end
   

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
    @document = Document.find(params[:id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)
    @document.user = current_user

      if @document.save
         redirect_to @document, notice: 'Document was successfully created.' 
        
      else
        render :new 
       
      end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
      @document = Document.find(params[:id])
      if @document.update(document_params)
        redirect_to @document, notice: 'Document was successfully updated.'
      else
         render :edit
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy
      redirect_to documents_url, notice: 'Document was successfully destroyed.' 
  end

  def moreinfodoc
     #@docform = @document.form
     #@formtask = @docform.tasks
     @doctask = @document.document_tasks

   
  end

  def trackdoc
     
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:title, :attachment, :desc, :serialno, :datesubmit, :form_id, :task_ids => [])
    end
end

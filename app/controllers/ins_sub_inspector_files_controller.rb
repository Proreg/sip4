class InsSubInspectorFilesController < ApplicationController
  before_action :set_model_instance,  except: [:index, :new, :update, :create, :destroy, :download] #Call the method set_model_instance before every action, but the index method. The index method needs a model array
  
  MODEL_NAME = InsSubInspectorFile #First letter uppercase
  SYMBOL_NAME = :ins_sub_inspector_file #lowercase and separated by underscore
  PARAMETERS = :sub_inspector_file, :description, :sys_document_type_id #Used by the getter, getting the params from specific models
 
  def index
     authorize! :show, params[:controller]     
     @grid = initialize_grid(MODEL_NAME.where(ins_sub_inspector_id: params[:sub_inspector_id]), per_page: 4) #wice grid, showing only the relatives of a specific employee
  end
  
  def download
    send_file InsSubInspectorFile.find(params[:id]).sub_inspector_file.to_s
  end
  
  def edit
    authorize! :edit, params[:controller]
  end

  def new  
    authorize! :create, params[:controller]
    @model_instance = MODEL_NAME.new
  end
  
  def destroy
    authorize! :destroy, params[:controller]
    MODEL_NAME.find(params[:id]).destroy # Destroy record on DB
    redirect_to :action=>'index'  
  end
  
  def create
    @model_instance= MODEL_NAME.new(valid_params)
    @model_instance.ins_sub_inspector_id = params[:sub_inspector_id] #SAve relative record with its employee
    a = @model_instance
    if @model_instance.save
      flash[:msg_success] = 'Telefone do inspetor cadastrado com sucesso.'
      if params[:commit] == "Salvar" 
        redirect_to :action=>'index'  
      else
        redirect_to :action => 'new' 
      end
    else
      flash[:msg_error] = a.errors.messages[:description].first
      redirect_to :action=>'index'
    end 
    
    
  end
   
  def update
      @model_instance = MODEL_NAME.find(params[:id])
      if @model_instance.update_attributes(valid_params)  
         redirect_to :action => 'index', :id => @model_instance
      else
         render :action => 'index'
      end    
  end
  
  private #Setters and getters
  
  def valid_params
    params.require(SYMBOL_NAME).permit(PARAMETERS)#params require é usado para updates de varios valores. Nesse exemplo apenas um foi alterado
  end

  def set_model_instance
    @model_instance = MODEL_NAME.find(params[:id]) # Set variable with the value return by the ID call
  end
end

class MemoriesController < ApplicationController
    before_action :set_memory, only: [:show, :update, :destroy]

    # GET /memories
    def index
      @memories = Memory.all
      json_response(@memories)
    end
  
    # POST /memories... TODO: Probably don't need this... instead create after other data created
    def create
      @memory = Memory.create!(memory_params)
      json_response(@memory, :created)
    end
  
    # GET /memories/:id
    def show
      json_response(@memory)
    end
  
    # PATCH /memories/:id .. TODO: Probably don't need this... instead create after other data created
    def update
      @memory.update(memory_params)
      head :no_content
    end
  
    # DELETE /memories/:id
    def destroy
      @memory.destroy
      head :no_content
    end
  
    private
  
    def memory_params
      # whitelist params
      params.permit(:user_id)
    end
  
    def set_memory
      @memory = Memory.find(params[:id])
    end
end

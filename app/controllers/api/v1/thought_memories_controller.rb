class Api::V1::ThoughtMemoriesController < ApplicationController
    before_action :set_thought_memory, only: [:show, :update, :destroy]
    
    # GET /thought_memories
    def index
      @thought_memories = ThoughtMemory.all
      json_response(@thought_memories)
    end
  
    # POST /thought_memories... 
    def create
      @thought_memory = ThoughtMemory.create!(thought_memory_params)
      json_response(@thought_memory, :created)
    end
  
    # GET /thought_memories/:id
    def show
      json_response(@thought_memory)
    end
  
    # PATCH /thought_memories/:id .. 
    def update
      @thought_memory.update(thought_memory_params)
      head :no_content
    end
  
    # DELETE /thought_memories/:id
    def destroy
      @thought_memory.destroy
      head :no_content
    end
  
    private
  
    def thought_memory_params
      # whitelist params
      params.permit(:thought_content, :thought_type, :time_orientation, :thought_object, :thought_reason, :automatic_thought, :rational_thought, :thought_id, :memory_id)
    end
  
    def set_thought_memory
      @thought_memory = ThoughtMemory.find(params[:id])
    end
end

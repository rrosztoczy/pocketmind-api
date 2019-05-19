class Api::V1::MemoriesController < ApplicationController
    before_action :set_memory, only: [:show, :update, :destroy]

    # GET /memories
    def index
      @memories = Memory.all
      json_response(@memories)
    end
  
    # POST /memories... TODO: Probably don't need this... instead create after other data created
    def create
      @memory = Memory.create(memory_params)
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
      # TODO: Comne back to this... recieving memory params + the memory again as hash... might be that initializer I amde
      # TODO:Need to add user id on creation
      params.require(:memory).permit(:user_id, :stress_level, :anxiety_level, :time_of_memory, :default_anxiety_level_value, :default_stress_level_value, emotion_memories_attributes: [:id, :emotion, :intensity, :pleasure], thought_memories_attributes: [:id, :thought_content, :thought_object, :thought_reason])
    end
  
    def set_memory
      @memory = Memory.find(params[:id])
    end
end

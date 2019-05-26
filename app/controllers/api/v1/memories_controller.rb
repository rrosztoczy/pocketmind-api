class Api::V1::MemoriesController < ApplicationController
    before_action :set_memory, only: [:show, :update, :destroy]

    # GET /memories
    def index
      @memories = Memory.all
      json_response(@memories)
    end
  
    # POST /memories... 
    def create
      @memory = Memory.create(memory_params)
      json_response(@memory, :created)
    end
  
    # GET /memories/:id
    def show
      json_response(@memory)
    end
  
    # PATCH /memories/:id 
    def update
      @memory.update(memory_params)
      json_response(@memory)
    end
  
    # DELETE /memories/:id
    def destroy
      @memory.destroy
      head :no_content
    end
  
    private
  
    def memory_params
      # whitelist params
      params.require(:memory).permit(:id, :created_at, :user_id, :time_of_memory, activity_memory_attributes: [:id, :activity_type, :activity_name, :activity_description, :activity_start_time, :activity_end_time, :activity_status], emotion_memories_attributes: [:id, :emotion_id, :intensity, :pleasure, :stress_level, :anxiety_level], thought_memories_attributes: [:id, :thought_content, :thought_type, :topic, :automatic_thought, :cognitive_bias, :rational_thought]).merge(user_id: current_user.id)
    end
  
    def set_memory
      @memory = Memory.find(params[:id])
    end
end

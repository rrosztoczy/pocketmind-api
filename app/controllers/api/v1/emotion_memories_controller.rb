class Api::V1::EmotionMemoriesController < ApplicationController
    before_action :set_emotion_memory, only: [:show, :update, :destroy]
    
    # GET /emotion_memories
    def index
      @emotion_memories = EmotionMemory.all
      json_response(@emotion_memories)
    end
  
    # POST /emotion_memories... 
    def create
      @emotion_memory = EmotionMemory.create!(emotion_memory_params)
      json_response(@emotion_memory, :created)
    end
  
    # GET /emotion_memories/:id
    def show
      json_response(@emotion_memory)
    end
  
    # PATCH /emotion_memories/:id .. 
    def update
      @emotion_memory.update(emotion_memory_params)
      json_response(@emotion_memory)
    end
  
    # DELETE /emotion_memories/:id
    def destroy
      @emotion_memory.destroy
      head :no_content
    end
  
    private
  
    def emotion_memory_params
      # whitelist params
      params.permit(:created_at, :intensity, :pleasure, :stress_level, :anxiety_level, :emotion_id, :memory_id, :default_intensity_value, :default_pleasure_value)
    end
  
    def set_emotion_memory
      @emotion_memory = EmotionMemory.find(params[:id])
    end
end

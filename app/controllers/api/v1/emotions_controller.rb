class Api::V1::EmotionsController < ApplicationController
    # before_action :set_emotion, only: [:show, :update, :destroy]
    
    # GET /emotions
    def index
      @emotions = Emotion.all
      json_response(@emotions)
    end
  
    # # POST /emotion_memories... 
    # def create
    #   @emotion_memory = EmotionMemory.create!(emotion_memory_params)
    #   json_response(@emotion_memory, :created)
    # end
  
    # # GET /emotion_memories/:id
    # def show
    #   json_response(@emotion_memory)
    # end
  
    # # PATCH /emotion_memories/:id .. 
    # def update
    #   @emotion_memory.update(emotion_memory_params)
    #   head :no_content
    # end
  
    # # DELETE /emotion_memories/:id
    # def destroy
    #   @emotion_memory.destroy
    #   head :no_content
    # end
  
    # private
  
    # def emotion_memory_params
    #   # whitelist params
    #   params.permit(:intensity, :pleasure, :emotion_id, :memory_id, :default_intensity_value, :default_pleasure_value)
    # end
  
    # def set_emotion_memory
    #   @emotion_memory = EmotionMemory.find(params[:id])
    # end
end

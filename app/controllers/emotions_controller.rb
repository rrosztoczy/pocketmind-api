class EmotionsController < ApplicationController
    before_action :set_emotion, only: [:show, :update, :destroy]
    
    # GET /emotions
    def index
      @emotions = Emotion.all
      json_response(@emotions)
    end
  
    # POST /emotions... 
    def create
      @emotion = Emotion.create!(emotion_params)
      json_response(@emotion, :created)
    end
  
    # GET /emotions/:id
    def show
      json_response(@emotion)
    end
  
    # PATCH /emotions/:id .. 
    def update
      @emotion.update(emotion_params)
      head :no_content
    end
  
    # DELETE /emotions/:id
    def destroy
      @emotion.destroy
      head :no_content
    end
  
    private
  
    def emotion_params
      # whitelist params
      params.permit(:feeling, :mood)
    end
  
    def set_emotion
      @emotion = Emotion.find(params[:id])
    end
end

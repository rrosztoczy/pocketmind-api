class ThoughtsController < ApplicationController
    before_action :set_thought, only: [:show, :update, :destroy]
    
    # GET /thoughts
    def index
      @thoughts = Thought.all
      json_response(@thoughts)
    end
  
    # POST /thoughts... 
    def create
      @thought = Thought.create!(thought_params)
      json_response(@thought, :created)
    end
  
    # GET /thoughts/:id
    def show
      json_response(@thought)
    end
  
    # PATCH /thoughts/:id .. 
    def update
      @thought.update(thought_params)
      head :no_content
    end
  
    # DELETE /thoughts/:id
    def destroy
      @thought.destroy
      head :no_content
    end
  
    private
  
    def thought_params
      # whitelist params
      params.permit(:category, :thought, :bias)
    end
  
    def set_thought
      @thought = Thought.find(params[:id])
    end
end

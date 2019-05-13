class PhysicalsController < ApplicationController
    before_action :set_physical, only: [:show, :update, :destroy]
    
    # GET /physicals
    def index
      @physicals = Physical.all
      json_response(@physicals)
    end
  
    # POST /physicals... 
    def create
      @physical = Physical.create!(physical_params)
      json_response(@physical, :created)
    end
  
    # GET /physicals/:id
    def show
      json_response(@physical)
    end
  
    # PATCH /physicals/:id .. 
    def update
      @physical.update(physical_params)
      head :no_content
    end
  
    # DELETE /physicals/:id
    def destroy
      @physical.destroy
      head :no_content
    end
  
    private
  
    def physical_params
      # whitelist params
      params.permit(:stress_level, :physical_activity)
    end
  
    def set_physical
      @physical = Physical.find(params[:id])
    end
end

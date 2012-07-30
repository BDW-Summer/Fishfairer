class LakesController < ApplicationController
  def index
	
	@lake = Lake.find(params[:id])
  end
end


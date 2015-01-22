class LessonsController < ApplicationController
  def index
    render json: School.find(params[:school_id]).lessons
  end
end

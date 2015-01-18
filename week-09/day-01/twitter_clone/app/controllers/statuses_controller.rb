class StatusesController < ApplicationController
  def index
    @statuses = Status.all

    respond_to do |f|
      f.json { render json: @statuses }
    end
  end
end

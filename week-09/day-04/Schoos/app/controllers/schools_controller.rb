class SchoolsController < ApplicationController
  def index
    render json: School.all
  end
end

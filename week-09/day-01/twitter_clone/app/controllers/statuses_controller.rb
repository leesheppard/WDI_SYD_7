class StatusesController < ApplicationController
  def index
    @statuses = Status.all

    respond_to do |f|
      f.json { render json: @statuses }
    end
  end

  def create
    @status = Status.create(status_params)

    respond_to do |f|
      f.json { render json: @status }
    end
  end

  def update
    @status = Status.find(params[:id])
    @status.update(status_params)

    respond_to do |f|
      f.json { render json: @status }
    end
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy

    respond_to do |f|
      f.json { render json: { status: "ok" } }
    end
  end

  private

  def status_params
    params.require(:status).permit(:username, :content)
  end
end

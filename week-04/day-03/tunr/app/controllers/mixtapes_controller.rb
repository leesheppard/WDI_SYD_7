class MixtapesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_mixtape, only: [:show, :edit, :update, :destroy]

  def index
    @mixtapes = Mixtape.order(:updated_at)
  end

  def show
  end

  def new
    @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.new(mixtape_params)

    if @mixtape.save
      redirect_to @mixtape
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @mixtape.update(mixtape_params)
      redirect_to @mixtape
    else
      render :edit
    end
  end

  def destroy
    @mixtape.destroy
    redirect_to mixtape_path
  end

  private

  def find_mixtape
    @mixtape = Mixtape.find(params[:id])
  end

  def mixtape_params
    params.require(:mixtape).permit(
      :name,
      :description,
      { song_ids: [] }
    )
  end
end

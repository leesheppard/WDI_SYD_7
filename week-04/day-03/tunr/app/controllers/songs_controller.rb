class SongsController < ApplicationController
  before_action :authorize_admin!, except: [:index, :show]
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.order(:name)
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(
      :name,
      :year,
      :genre,
      :duration,
      :artist_id,
      :url
    )
  end
end






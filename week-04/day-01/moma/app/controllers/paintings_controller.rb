class PaintingsController < ApplicationController
  def show
    @artist = Artist.find(params[:artist_id])
    @painting = @artist.paintings.find(params[:id])
  end

  def destroy
    @painting = current_user.paintings.find(params[:id])
    @painting.destroy
  end
end

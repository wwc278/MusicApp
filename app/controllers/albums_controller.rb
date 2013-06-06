class AlbumsController < ApplicationController

  def index
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def edit
    render :edit
  end

  def update
    album_to_update = Album.find(params[:id])

    if album_to_update.update_attributes(params[:album])
      redirect_to band_path(album_to_update.band)
    else
      redirect_to edit_album, :notice => 'invalid band name'
    end

  end

end

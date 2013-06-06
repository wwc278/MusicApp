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
    @album = Album.find(params[:id])
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

  def create
    new_album = Album.new(params[:album])
    p new_album
    if new_album.save!
      redirect_to band_path(new_album.band_id)
    else
      redirect_to new_band_album_path(1)
    end

  end

end

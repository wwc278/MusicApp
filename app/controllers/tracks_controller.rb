class TracksController < ApplicationController

  def new
    render :new
  end

  def edit

  end

  def create
    new_track = Track.new(params[:track])
    p new_track

    if new_track.save!
      redirect_to band_album_path(new_track.album.band.id, new_track.album.id)
    else
      redirect_to new_band_album_track(1,1)
    end

  end

  def update
    update_track = Track.find(params[:id])
    if update_track.update_attributes(params[:track])
      redirect_to band_album_path(update_track.album.band.id,
      update_track.album.id)
    else
      redirect_to edit_band_album_track(params[:band_id], params[:album_id],
      params[:id])

    end

  end
end
class BandsController < ApplicationController

  def new
    render :new
  end

  def index
    @bands = Band.all
    render :index
  end

  def create
    new_band = Band.new(params[:band])

    if new_band.empty_band_name?(new_band)
      redirect_to :new_band, :notice => 'invalid band name'
      return
    end

    if new_band.save!
      redirect_to :bands
    else
      redirect_to new_band, :notice => 'invalid band name'
    end

  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def edit
    p edit_band
    render :edit
  end

  def update
    band_to_update = Band.find(params[:id])

    if band_to_update.update_attributes(params[:band])
      redirect_to :bands
    else
      redirect_to edit_band, :notice => 'invalid band name'
    end

  end

end

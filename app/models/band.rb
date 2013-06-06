class Band < ActiveRecord::Base
  attr_accessible :band_name
  has_many :albums, :dependent => :destroy

  def empty_band_name?(band)
    band.band_name == ''
  end

end

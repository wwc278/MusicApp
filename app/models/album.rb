class Album < ActiveRecord::Base
  attr_accessible :album_name, :band_id
  belongs_to :band
  has_many :tracks, :dependent => :destroy

end

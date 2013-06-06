class Track < ActiveRecord::Base
  attr_accessible :album_id, :track_name
  belongs_to :album
end

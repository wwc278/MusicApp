# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create(band_name: "band1")
Band.create(band_name: "band2")
Band.create(band_name: "band3")

Album.create(album_name: 'album1', band_id: 1)
Album.create(album_name: 'album2', band_id: 1)
Album.create(album_name: 'album3', band_id: 1)
Album.create(album_name: 'album2', band_id: 2)
Album.create(album_name: 'album3', band_id: 3)

Track.create(album_id: 1, track_name: 'track1')
Track.create(album_id: 2, track_name: 'track2')
Track.create(album_id: 3, track_name: 'track3')
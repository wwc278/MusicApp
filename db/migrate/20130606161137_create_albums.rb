class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :band_id, :null => false
      t.string :album_name, :null => false

      t.timestamps
    end
  end
end

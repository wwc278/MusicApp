class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id, :null => false
      t.string :track_name, :null => false

      t.timestamps
    end
  end
end

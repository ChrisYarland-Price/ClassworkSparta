class CreateAlbumSong < ActiveRecord::Migration[5.1]
  def change
    create_table :album_songs do |t|
      t.integer :album_id
      t.integer :songs_id
    end
  end
end

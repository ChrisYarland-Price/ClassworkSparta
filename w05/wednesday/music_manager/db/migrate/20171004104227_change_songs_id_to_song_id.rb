class ChangeSongsIdToSongId < ActiveRecord::Migration[5.1]
  def change
    remove_column :album_songs, :songs_id
    add_column :album_songs, :song_id, :Integer
  end
end

class Album < ApplicationRecord
  has_many :album_song
  has_many :songs, through: :album_song
end

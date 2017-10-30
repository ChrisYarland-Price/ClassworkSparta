class Song < ApplicationRecord
  has_many :album_song
  has_many :albums, through: :album_song
end

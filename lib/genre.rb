require 'pry'

class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    artists = []
    @songs.each do | song |
      artists << song.artist
    end
    artists
  end
end

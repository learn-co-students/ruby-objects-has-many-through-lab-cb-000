require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #binding.pry
    @songs << song
    song.artist = self
  end

  def genres
    @songs.collect { |song| song.genre }
  end
end

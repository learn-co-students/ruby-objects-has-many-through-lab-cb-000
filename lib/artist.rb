require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def new_song(name,  genre)
    song = Song.new(name, self, genre)
    song.genre = genre
    song.artist = self
    @songs << song
    @genres << genre
    song
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

end

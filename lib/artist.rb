
require 'pry'
class Artist
  attr_accessor :name, :songs, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def new_song(name, genre)
    a = Song.new(name, self, genre)
    @songs << a
    a
  end
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
  def self.all
    @@all
  end
  def songs
    @songs
  end
end

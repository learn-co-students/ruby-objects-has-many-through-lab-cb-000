class Song
  @@all = []
  attr_reader :genre
  attr_accessor :artist
  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.all
    @@all
  end
end

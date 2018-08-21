class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name,artist,genre)
  
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
    artist.songs << self
    artist.genres << genre
  end
  
  def self.all
    @@all
  end
  
  
end
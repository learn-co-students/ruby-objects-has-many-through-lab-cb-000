# **The `Song` model:**
#

# * A song should be initialized with a name, an artist, and a genre, and be saved in the `@@all` array.
class Song


  attr_accessor :name, :artist, :song, :genre
  @@all = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end


  def self.all
    @@all
  end

end

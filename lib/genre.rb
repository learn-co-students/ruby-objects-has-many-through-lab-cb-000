# **The `Genre` model:**
#


# * The `Genre` class needs an instance method, `#new_song`, that takes in an argument of a name and an artist and creates a new song.
  # That song should know that it belongs to the genre.

# * The `Genre` class needs an instance method, `#artists`,
  # that iterates over the genre's collection of songs and collects the artist that owns each song.
class Genre

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self

  end



  def all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end


  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map { |song| song.artist }
  end

end

class Genre
  # has a name
  attr_accessor :name

  # initializes with a name and an empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  # has many songs
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  # has many artists, through songs
  # The Genre #artists method iterates over the genre's @songs collection, calls the #artists method on each song object and collects the resulting artists.
  def artists
    @songs.collect { |song| song.artist }
  end
end

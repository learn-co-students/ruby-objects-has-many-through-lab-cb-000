class Artist
  # has a name
  attr_accessor :name

  # initializes with a name and an empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  # adds a new song to the artist's @songs array and tells that song that it belongs to the artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # has many songs
  def songs
    @songs
  end

  # has many genres, through songs
  def genres
  end
end

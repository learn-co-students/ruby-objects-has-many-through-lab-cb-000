class Genre

  attr_accessor :name, :songs, :artist

  def initialize(genre)
    @name = genre
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.map {
      |song|
      song.artist
    }
  end

end

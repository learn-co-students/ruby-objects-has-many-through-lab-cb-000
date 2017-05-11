class Genre
  attr_reader :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @artists << song.artist
    @songs << song

  end

end

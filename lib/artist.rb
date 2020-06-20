class Artist

  attr_accessor :name, :genres, :songs

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.artist = self
  end

end

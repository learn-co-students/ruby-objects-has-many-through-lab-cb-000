class Artist
  attr_reader :name, :songs

  def genres=(genre)
    @genres << genre
  end
  def genres
    self.songs.collect(&:genre)
  end

  def initialize name
    @name = name
    @songs = []
    @genres = []
  end

  def add_song song
    @songs << song
    song.artist = self
  end





end

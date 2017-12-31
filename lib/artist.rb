class Artist
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @songs << song
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end

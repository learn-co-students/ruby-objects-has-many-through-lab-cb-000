class Artist

  attr_reader :songs, :name, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @songs << song
  end

  def genres
    @songs.each { |s| @genres << s.genre }
    @genres
  end



end

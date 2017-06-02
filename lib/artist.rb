class Artist

  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
#adds that song to the artist's collection of songs. The #add_song method should also tell the song that it belongs to that artist.
  @songs << song
  song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end

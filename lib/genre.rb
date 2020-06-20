class Genre

  attr_reader :name
  attr_accessor :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end

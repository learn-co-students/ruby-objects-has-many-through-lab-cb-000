class Genre
  attr_accessor :songs, :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end

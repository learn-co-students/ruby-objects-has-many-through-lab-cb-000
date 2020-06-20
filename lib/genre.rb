class Genre

  attr_accessor :name, :artists

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def songs
    @songs
  end

  def artists
    @songs.collect { |song| song.artist}
  end

end

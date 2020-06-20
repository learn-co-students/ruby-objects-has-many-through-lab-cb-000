class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end

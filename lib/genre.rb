class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect do |s|
      s.artist
    end
  end
  

end

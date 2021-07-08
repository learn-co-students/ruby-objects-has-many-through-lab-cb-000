class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song) 
    if song.is_a?(Song) && !@songs.include?(song)
      @songs << song
      song.artist = self
    end
  end

  def genres
    @songs.collect {|song| song.genre}
  end

  def songs
    @songs
  end
  
end

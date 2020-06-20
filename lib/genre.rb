class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name=name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end #add_song

  def artists
    # that iterates over the genre's collection of songs and collects the artist that owns each song.
    @songs.collect do |song|
      song.artist
    end #collect
  end #artists
  # def songs
  #   The Genre class needs an instance method, #songs, that returns the @songs array.
  # end

end #class


class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name=name
    @songs = []
    @genres = []
  end #initialize

  def add_song(song)
    # puts "******add_song**gothere#{song}"
    @songs << song
    song.artist = self #   The #add_song method should also tell the song that it belongs to that artist.

  end #add_song

  def genres
    #genres that iterates over that artist's songs and collects the genre of each song.
    @songs.collect do |song|
      song.genre
    end #collect
  end #genres
  # def songs
  #   # The Artist class needs an instance method, #songs, that returns the @songs array.
  # end #songs
end #class

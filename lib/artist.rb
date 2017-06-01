class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist=self   
  end

  def genres
    @songs.collect do |x|
      x.genre
    end
  end


    
end
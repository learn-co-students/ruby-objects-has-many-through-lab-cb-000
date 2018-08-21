class Artist 
  
  attr_accessor  :songs, :name, :genres
  
  @@all = []
  
  
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name,song_genre)
    song = Song.new(song_name, self, song_genre)
  end
  
end 
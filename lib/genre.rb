class Genre 
  
  attr_accessor :name, :artists
  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @artists = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, song_artist)
    song = Song.new(song_name, song_artist, self)
    self.songs << song
    self.artists << song_artist
  end
  
  def songs
    Song.all.each {|x| x.genre == self}
  end
  
  def artists 
   songs.map {|x| x.artist}
  end
  
end
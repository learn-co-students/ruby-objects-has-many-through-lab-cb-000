class Song
  attr_accessor :name, :genre, :artist
  
  def initialize(name, genre)
    self.name = name
    genre.add_song(self)
    self.artist = artist
  end
end

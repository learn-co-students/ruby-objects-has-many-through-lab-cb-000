class Song
  attr_accessor :artist, :genre, :title 

  def initialize(title, genre)
    @genre = genre if genre.is_a?(Genre)
    genre.add_song(self) 
    @title = title
  end
end

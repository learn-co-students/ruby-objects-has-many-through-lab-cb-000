class Song
  attr_reader :title, :genre
  attr_accessor :artist

  def initialize(title, genre)
    @title = title
    genre.add_song(self)
    @genre = genre
  end
end

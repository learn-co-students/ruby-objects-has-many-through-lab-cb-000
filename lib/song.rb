class Song
  # belongs to a artist
  attr_accessor :name, :artist, :genre

  # initializes with a name and a genre
  # belongs to a genre
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end

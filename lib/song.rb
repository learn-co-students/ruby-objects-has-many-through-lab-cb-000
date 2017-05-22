


class Song

  attr_accessor :artist, :genre, :title

  def initialize(title, genre)
    @title = title
    @genre = genre
    genre.add_song(self)
  end

end

class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @genre = genre
    @name = name
    genre.songs << self
  end


end

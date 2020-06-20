class Song
  attr_accessor :name, :genre , :artists, :artist

  def initialize(name,genre)
    @name = name
    @genre = genre
    genre.songs << self
  end
end

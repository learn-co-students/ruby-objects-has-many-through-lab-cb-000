class Song

  attr_accessor :genre
  attr_reader :name
  attr_accessor :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    @genre.add_song(self)
  end



end

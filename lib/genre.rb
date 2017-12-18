class Genre
  # has a name
  attr_accessor :name

  # initializes with a name and an empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  # has many songs

  # has many artists, through songs
end

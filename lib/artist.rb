# **The `Artist` model:**


# * The `Artist` class needs an instance method, `#songs`, that iterates through all songs and finds the songs that belong to that artist.
  #Try using `select` to achieve this.
# * The `Artist` class needs an instance method, `#genres` that iterates over that artist's songs and collects the genre of each song
class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)

  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map { |song| song.genre }
  end


end

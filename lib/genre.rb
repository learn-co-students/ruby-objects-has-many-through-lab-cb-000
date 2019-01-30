class Genre
  attr_reader :name; :genre
  attr_accessor :song

  # Genre class needs a class variable @@all that begins as an empty array
  @@all_genres = [ ]

  #A genre should be initialized with a name and be saved in the @@all array.
  def initialize(name)
    @name = name
    @@all_genres << self
  end

  #Genre class needs a class method .all that lists each genre in the class variable
  def self.all
    @@all_genres
  end

  #Genre class needs an instance method, #songs, that iterates through all songs 
  #and finds the songs that belong to that genre.
  def songs
    Song.all
  end 

  #Genre class needs an instance method, #artists, that iterates over the genre's 
  #collection of songs and collects the artist that owns each song.
  def artists
      Song.all.collect do |song|
        song.artist
      end
  end


end

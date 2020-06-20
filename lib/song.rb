class Song
  attr_accessor :name, :artist, :genre

  #Song class needs a class variable @@all that begins as an empty array.
  @@all_songs = [ ]

  #A song should be initialized with a name, an artist, 
  #and a genre, and be saved in the @@all array. Notice that the arguments need to 
  #be in order when you call the .new method for a Song! 
  def initialize(name="", artist="", genre="")
   @name = name
   @artist = artist
   @genre = genre
   @@all_songs << self

  end

  #a class method .all that lists each song in the class variable.
  def self.all
   @@all_songs
  end 

end 
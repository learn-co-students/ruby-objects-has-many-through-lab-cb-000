class Artist
  attr_accessor :name, :artist, :genre
  
  #The Artist class needs a class variable @@all that begins as an empty array
  @@all_artists = [ ]

  #An artist is initialized with a name and is saved in the @@all array
  def initialize(name)
    @name = name
    @@all_artists << self
  end 

  #the .all method gives us all instances of artist that are stored in the @@all variable
  def self.all
    @@all_artists
  end

  #instance method, #new_song, that takes in an argument of 
  #a name and genre creates a new song. That song knows that it belongs to the artist.
  def new_song(name, genre)
      Song.new(name, self, genre)
  end

  


  #the songs method iterates through all songs and finds the songs 
  #that belong to that specific artist. 
  def songs
    Song.all.select do |song|
        song.artist == self
    end
  end 

  #the genres method iterates through all of a specific artist's songs and finds the 
  #genre of those songs 
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end 

end 


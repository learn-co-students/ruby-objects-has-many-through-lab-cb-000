class Song


    attr_accessor :artist, :genre, :name
  
      @@all = []
  
  
    def initialize(songStr, artistObj, genreObj)
      @name = songStr
      @artist = artistObj
      @genre = genreObj
  
      #these methods validate no duplicates
      #song is the only place we have both the artists
      #and the genre -- so it makes sense to add the
      #song and genre to the artist from here, and the artist
      #to the genre from here.
      genreObj.add_artist(artistObj, self)
      artistObj.add_song(self)
      artistObj.add_genre(genreObj)
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all
      puts("All SONG OBJECTS: \n")
      @@all.map{|x| "#{x.name}"}
    end
  
  end
  
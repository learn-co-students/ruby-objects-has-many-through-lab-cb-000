class Artist

    @@all = []
  
    attr_accessor :songs, :name, :genres
  
    def initialize(nameStr)
  
      #Artist.new("Jay-Z")
      @name = nameStr
      #We wont add songs until the songObj is created
      @songs = []
      @genres = []
      #(Artist.all).to include(jay_z)
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all
      puts("All ARTIST OBJECTS: \n")
      @@all.map{|x| "#{x.name}"}
    end
  
      def each(&block)
  
      end
  
      def add_song(songObj)
        if !@songs.include?(songObj)
          @songs << songObj
        end
      end
      def add_genre(genreObj)
        if !@genres.include?(genreObj)
          @genres << genreObj
        end
      end
  
    def new_song(songStr, genreObj)
      #two methods add song - here, and in Song.new
      #How do we safeguard this?
  
      #because the new song knows the genre and the artists
      #let's make Song responsible for adding to our songs[]
      #and genres[] array inside Artist and Genre
      newSong = Song.new(songStr, self, genreObj)
    end
  
  end
  
class Genre
    @@all = []

    attr_accessor :artists, :name, :songs

    def self.add_genre(genreName)
      #only add unique genres
      puts("Initializing:  genres = #{@@all}")
      tmpGenre = findGenreObj(genreName)

      if tmpGenre == nil
        @artists = []
        @name = genreName
        @@all << self
        puts("tmpGenre == nil, returning self:  #{self}")
        retVal = self
      else
        puts("tmpGenre exists - returning it :  #{tmpGenre}")
        retVal = tmpGenre
      end
      retVal
    end

    def initialize(genreName)
        #this will add duplicate genres
        #just tell user about it.
        if Genre.findGenreObj(genreName) != nil
          puts("WARNING! Found DUPLICATE genre:  #{genreName}")
        end

        @artists = []
        @songs = []
        @name = genreName
        @@all << self
    end

    def self.all
        @@all 
    end

    def songs
      @songs
    end

    def add_artist(artistObj, songObj)
      if !@artists.include?(artistObj)
        @artists << artistObj
      end
      @songs << songObj
    end

    def self.reset_Genres
      #needed for testing add_genre
      @@all.clear
    end

    def self.findGenreObj(genre)
      #returns object or nil
    retval = nil
      for x in 0..@@all.size-1
        if @@all[x].name == genre
          retval = @@all[x]
        end
      end
      retval
    end


    def self.print_all
      puts("All GENRE OBJECTS: \n")
      @@all.map{|x| "#{x.name}"}
    end

    def self.print_all

        for i in 0 ..@@all.size - 1
          puts("#{@@all[i].name}\n") #rap

            for j in 0..@@all[i].artists.size - 1
              puts("  #{@@all[i].artists[j].name}\n") #Jay-Z

                for k in 0..@@all[i].artists[j].songs.size - 1
                 puts("     #{@@all[i].artists[j].songs[k].name}\n")
                end #for all songs

             end #for all artists

         end #for all genres

    end #print_all

  end

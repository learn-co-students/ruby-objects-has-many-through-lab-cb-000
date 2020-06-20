class Song
  attr_accessor :title, :genre, :artist
  def initialize(title,genre)
    @title=title
    @genre=genre
    genre.add_song(self)
    # puts "#{self.title}||#{self.genre}"
  end #initialize

end #class

#
# class Song
#   attr_accessor :title, :genre

  # The initialize method should associate that song to the genre passed in as an argument.
  # How can you associate a song to a genre? A song needs a "genre" attribute.
  # Try creating an attr_accessor for genre. Genres also need to know about songs.
  #  You'll need to create a Genre#add_song method. Let's come back to this in a minute.

  # def initialize(title,genre)
  # def initialize(t=nil,g=nil)
  #   puts "*****************did we get to init?"
  #   @title=t
  #   @genre=g
  #   # genre.add_song(self)  # add back in later
  #   puts "*******initialize**gothere"
  # end

# end #class


# ninety_nine_problems = Song.new("99 Problems", "rap")
# puts "#{ninety_nine_problems}"

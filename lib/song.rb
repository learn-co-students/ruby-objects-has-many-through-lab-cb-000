require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, style)
    @name = name
    @genre = style
    @genre.add_song(self)
  end

end

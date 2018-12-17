
require_relative "genre.rb"
class Artist
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(name, genre, i=self)
    track = Song.new(name, i, genre)
  end
  def songs
    Song.all.select do |track|
      track.artist.name == @name
    end
  end
  def genres
    self.songs.collect do |track|
      track.genre
    end
  end
end
jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
Genre.all.each do |genre|
  puts genre.name
end
jay_z.songs.each do |song|
  puts song.name
end
puts ninety_nine_problems.artist.name

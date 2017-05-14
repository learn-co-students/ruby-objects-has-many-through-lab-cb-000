class Genre
	attr_accessor :name, :song, :artist

	@@genres = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def self.genres 
		@@genres # add genre object that has appropriate @name
	end

	def self.song
		@song
	end

	def self.artist
		@artist
	end

	def songs
		@songs << Song.song
		@songs
	end
	
	def artists
		@artists << Artist.name
	end
end

class Song
	attr_accessor :name, :artist, :genre

	@@genres =[]

	def initialize(name, genre)
		@name = name
		@genre = genre
		@artist = artist
	end

	def self.song
		self
	end

	def self.artist
		@artist
	end

	def self.name
		@name
	end

	def self.genre
		@genre = Genre.genres
	end
end
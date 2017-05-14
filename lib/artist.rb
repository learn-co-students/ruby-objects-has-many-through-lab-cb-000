class Artist
	attr_accessor :name, :genres, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		#belongs to the artist
		song.artist = self
	end

	def songs
		@songs
	end

	def self.songs
		@songs
	end

	def genres
		#has many genres through songs
		@genres = Song.genre
		@genres
	end
end
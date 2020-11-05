class Song
	attr_reader :name, :artist, :genre

	@@all = []

	def self.all
		@@all
	end

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@all.push(self)
	end
end

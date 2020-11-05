class Genre
	attr_reader :name

	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def songs
		Song.all.filter{|song| song.genre == self}
	end

	def artists
		songs.map{|song| song.artist}
	end
end

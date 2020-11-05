class Artist
	attr_reader :name

	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def songs
		Song.all.filter{|song| song.artist == self}
	end

	def genres
		songs.map{|song| song.genre}
	end
end

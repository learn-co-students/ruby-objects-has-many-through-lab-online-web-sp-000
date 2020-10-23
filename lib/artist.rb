class Artist
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def new_song(song, genre)
    song = Song.new(name, self, genre)
    @songs << song
    self.songs.last
  end
  
  	def genres
		self.songs.collect do |song|
			song.genre 
		end
	end
  
  
  
  
  
  
  
  
end
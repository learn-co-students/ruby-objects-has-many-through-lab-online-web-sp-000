class Genre

attr_accessor :artist, :song, :name

@@all = []

def initialize(name)
  @name = name 
  @@all << self 
  
end
  
def self.all 
  @@all
end
  
def songs
  Song.all.select { |song|  song.genre == self }
end
  
def artists
  songs.collect { |song| song.artist }
end


  
end



class Genre
attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end
  
def songs
  Song.all do |songs|
    song.genre == self
end
end

def artists
  songs.map do |songs|
    songs.artist
  end
end
  
  
end
class Song
  attr_accessor :name, :artist, :genre, :songs
  @@all= []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

def self.all
    @@all
end

def genre
  genre_name
end

def artist
  self.name
end

def songs
    @songs
end

end

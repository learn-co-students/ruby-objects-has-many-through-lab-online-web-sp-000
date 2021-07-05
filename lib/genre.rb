class Genre

attr_accessor :name, :songs, :artists

@@all = []

def initialize(genre)
  @name = genre
  @songs = []
  @artists = []
  @@all << self
end

def self.all
  @@all
end
end

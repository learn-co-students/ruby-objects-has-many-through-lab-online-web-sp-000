class Artist

attr_accessor :name, :songs, :genres

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = []
  @genres = []
end

def self.all
  return @@all
end

def new_song(name, genre)
  s = Song.new(name, self, genre)
  @genres << genre
  @songs << s
  s
end

end

class Artist
@@all = []
attr_accessor :name

def initialize (name)
@name = name
@songs = []
@genres = []
@@all << self
end

def new_song(name, genre)
  song = Song.new(name, self, genre)

end

def songs
  @songs
end

def genres
  @genres
end

def self.all
  @@all
end

end

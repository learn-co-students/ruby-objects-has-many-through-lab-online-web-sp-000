class Artist
attr_accessor :name, :genre, :title, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def songs
    @songs
end

def new_song(title, genre)
  song = Song.new(title, self, genre)
  @songs << song
end

def genres
  @genres = @songs.collect(&:genre)
end

def self.all
    @@all
end
end

class Song
  attr_accessor :name, :genre, :artist
@@all = []
def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@all << self
artist.songs << self
genre.songs << self
genre.artists << artist
artist.genres << genre
end

def self.all
  @@all
end

end

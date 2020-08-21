class Genre
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select do | song |
    song.genre == self
  end
end

def artists
  #note: songs mean the return of the songs instance method, which return the genre's songs
  songsofthisgenre = songs
  artistsofthisgenre = []
  #note how i'm iterating, not selecting. 
  songsofthisgenre.each do | song |
    artistsofthisgenre << song.artist
  end
  artistsofthisgenre
end

end

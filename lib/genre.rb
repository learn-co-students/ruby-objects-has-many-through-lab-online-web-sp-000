class Genre

attr_accessor :name, :artist, :song, :genre

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select {|song| song.genre == self}
end

def artists
  songs.map do |genre|
    genre.artist
  end
end

end

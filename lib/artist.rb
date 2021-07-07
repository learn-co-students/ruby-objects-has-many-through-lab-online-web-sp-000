class Artist
  attr_accessor :name, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre) #takes in an argument of name and genre and creates a new song
                            #That song should know it belongs to the artist

    Song.new(name, self, genre)
  end

  def songs #iterates through all songs and selects the songs that belong to that artist
    Song.all.select {|song| song.artist == self}
  end

  def genres #iterates over that artist's songs and collects the genre of each song
    songs.map {|song| song.genre}
  end
end

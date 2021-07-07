
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    #iterates through all songs and finds songs that belong to artist
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    #iterates through artist's songs (via songs) and collects genre of each song
    self.songs.collect do |song|
      song.genre
    end
  end
end

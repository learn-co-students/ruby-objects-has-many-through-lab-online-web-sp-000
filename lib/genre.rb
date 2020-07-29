class Genre
  attr_accessor :name

  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists
  end
end

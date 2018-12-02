class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @song = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def artists
    Song.all.collect do |song|
      song.artist if song.genre == self
    end
  end

end

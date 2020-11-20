class Genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artists
    Artist.all do |artist| artist.genre == self
    end
  end
  def songs
    Song.all.select do |song| song.genre == self
    end
  end
end

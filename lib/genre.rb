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
    songs.map do |song| song.artist
    end
  end

  def songs
    Song.all.select do |song| song.genre == self
    end
  end
end

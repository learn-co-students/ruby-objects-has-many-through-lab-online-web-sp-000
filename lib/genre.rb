class Genre
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.collect {|s| s.genre == self}
  end

  def artists
    songs.map {|s| s.artist}
  end
end

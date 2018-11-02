class Genre
  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def artists
    artists = songs.map{|song| song.artist}
    artists.uniq
  end

end

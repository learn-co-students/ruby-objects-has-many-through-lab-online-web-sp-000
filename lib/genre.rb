class Genre
  attr_reader :name, :songs

  GENRES = []
  def self.all
    GENRES
  end

  def initialize(name)
    @name = name
    @songs = []
    GENRES << self
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
  end

  def artists
    @songs.map { |song| song.artist }.uniq
  end
end

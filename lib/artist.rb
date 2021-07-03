class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.filter { |song| song.artist == self }
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    genres = songs.map { |song| song.genre }
  end
end

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    # search through Song.all
    # find the ones where song.artist == self
    Song.all.select {|song| song.artist == self}

    # maintain a single source of truth
    # if you want information about a song, go to the Songs class
  end

  def genres
    self.songs.map {|song| song.genre}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def self.all
    @@all
  end

end

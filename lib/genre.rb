class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    @songs.collect {|song| song.artist}
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs.freeze
  end


end

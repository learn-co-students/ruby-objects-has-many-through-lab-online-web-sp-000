class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    #using select from Songs
    Song.all.select {|e| e.artist == self}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def genres
    #collects unique genre of songs from song objects
    self.songs.collect {|song| song.genre}
  end
  #end of class
end

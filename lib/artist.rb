class Artist
  @@all = []
  attr_accessor :name, :song, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    self.songs.map {|x| x.genre}
  end

end

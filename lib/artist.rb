class Artist

attr_accessor :name, :artist, :genre

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    self.new(name, genre)
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map do |artist|
      artist.genre
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

end

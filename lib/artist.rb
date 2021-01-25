class Artist
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song, genre)
    Song.new(song, self, genre)
  end

  def genres
    self.songs.map { |song| song.genre }
  end

end #Class End

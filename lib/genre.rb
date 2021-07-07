class Genre
   attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    Song.new(name, artist, genre)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    @@all
  end


  def artists
    songs.map do |song|
      song.artist
    end
  end

end

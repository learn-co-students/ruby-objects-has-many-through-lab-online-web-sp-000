class Artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def genres
    Genre.all.select do |genre| genre.artist == self
    end
  end

  def songs
    Song.all.select do |song| song.artist == self
    end
  end

  def new_song(name, genre)
    song = Song.new(name, artist = self, genre)
    song
  end
end

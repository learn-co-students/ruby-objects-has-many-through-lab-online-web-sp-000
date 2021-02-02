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
  
  def new_song(name, genre)
   Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select{ |s| s.artist == self}
  end

  def genres
    song_genres = []
    Song.all.select do |x|
      if x.artist == self
        song_genres << x.genre
      end
    end
    song_genres.uniq!
    song_genres
  end

end
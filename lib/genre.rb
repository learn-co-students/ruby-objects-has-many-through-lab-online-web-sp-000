class Genre
  
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
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    genre_artists = []
    Song.all.select do |s|
      s.genre == self
      genre_artists << s.artist
    end
    genre_artists.uniq!
    genre_artists
  end
    
end
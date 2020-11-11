class Genre
  
  attr_accessor :name, :artist, :songs
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all
  end
  
  def self.all
    @@all
  end
  
  def artists
    specific_genre = self.name
    artists_by_sp_genre = [ ]
    Song.all.each do |song|
      if song.genre.name == self.name
        artists_by_sp_genre << song.artist
      end
    end
   artists_by_sp_genre
  end
  
end
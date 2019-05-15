class Artist 
  
  attr_accessor :song, :genres, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name)
    song.artist = self
  end
  
  def songs
    Song.all.select { |s| song.artist == self}
  end
  
  def genres
    Song.all.collect { |g| genre.artist == self}
 end   
end
    
    
    

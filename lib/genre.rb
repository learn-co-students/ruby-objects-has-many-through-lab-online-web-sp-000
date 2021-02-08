class Genre 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    @songs = songs 
    @@all << self
  end
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self
  end
end 

def artists
  self.songs.collect do |artist|
    artist.artist
  end
end 

end 
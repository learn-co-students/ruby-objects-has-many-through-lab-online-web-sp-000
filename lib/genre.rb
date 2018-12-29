class Genre 
  attr_accessor :name, :artists, :songs
  @@all = []
  def initialize(name)
    @name =  name
    @songs = []
    @artists = []
    @@all << self 
  end
  def self.artists
    @artists
  end 
  
  def Genre.all 
    @@all 
  end
end
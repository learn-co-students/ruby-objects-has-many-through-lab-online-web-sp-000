class Genre 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def artists
    songs.collect { |song| song.artist }.uniq 
  end
end 
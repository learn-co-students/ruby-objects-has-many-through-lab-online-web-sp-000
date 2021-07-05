class Artist 
  attr_accessor :name, :songs, :genres 
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def self.genres 
    @genres 
  end
  def Artist.all 
    @@all 
  end 
  
  def new_song(name, genre)
   Song.new(name, self, genre)
 end 
 
 def self.songs 
   return @songs 
  end 
  
end
class Artist 
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
  
 def new_song(name, genre)
   song = Song.new(name, self, genre)
   
  end 
  
  def songs 
    Song.all.select {|x| x.artist== self}
  end 
  
  def genres 
    songs.collect {|x| x.genre}
  end
    
  
  
end
  
 
class Artist 

  attr_accessor :name, :genre 
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end 
 
  def songs 
    Song.all.select {|data| data.artist == self } 
  end 
  
  def genres 
    Song.all.map {|data| data.genre } 
  end 
  
  
 
#class Methods 

  def self.all 
    @@all 
  end 

end #end of the Artist class 
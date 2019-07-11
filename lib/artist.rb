class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(title, genre)
    new_song = Song.new(title, self, genre)
    @songs << new_song
    new_song
  end
  
  def songs
    @songs.select {|s| s.artist == self}
  end
  
  def genres 
    @songs.map {|s| s.genre}.uniq
    
  end
  
end
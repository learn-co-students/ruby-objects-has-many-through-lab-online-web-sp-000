class Artist 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name  
    @@all << self 
  end 
  
  
  def new_song(title, genre)
    Song.new(title, self, genre)
  end 
  
  def songs
    Song.all.select do |songs|
      songs.artist == self 
    end
  end
  
  def genres 
    songs.map(&:genre)
  end
    
end 
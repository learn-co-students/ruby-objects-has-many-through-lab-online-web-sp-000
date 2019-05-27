class Genre 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
    @artists = []
  end 
  
  def self.all
    @@all 
  end
  
  def songs 
    Song.all.select do |s| 
      s.genre == self 
    end 
  end 
  def artists 
    results = []
    songs.each do |s|
      results << s.artist 
    end 
    results 
  end 
end 
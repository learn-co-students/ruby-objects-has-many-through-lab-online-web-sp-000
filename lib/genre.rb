class Genre 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all  
    @@all
  end

  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  # Which artist has many genres (through Song) ?
   def artists
     
     # We are looking for song.artist
     # The method going through Song is #songs
     
    self.songs.collect {|song| song.artist}   
  end
  
end
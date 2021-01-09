class Genre 
  attr_accessor :name
  
  @@all = []
  
  def initialize(genre_name)
    @name = genre_name
    @@all << self
    @songs = []
    @artists = []
  end 
  
  def self.all
    @@all
  end 
  
  def songs
   @songs = 
   Song.all.select {|song| song.genre == self}
   ##go thru all songs created, colllect the ones with the same genre as the current iteration 
  end 
  
  def artists 
    @artists = songs.map {|x| x.artist}
    ##go thru this genres songs, pull all artists 
  end 

end 
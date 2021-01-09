class Artist 
  attr_accessor :name, :all, :songs, :genres, :song
  
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @@all << self 
    @genres = []
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    @songs = 
    Song.all.select {|song| song.artist == self}
    ##pull songs made by artist 
  end 
  
  def new_song(a, b)
    song = Song.new(a, self, b)
  end 
  
  def genres
   @genres = songs.map {|song| song.genre}
    ##collect all genres from songs instance var 
  end 
  
end 


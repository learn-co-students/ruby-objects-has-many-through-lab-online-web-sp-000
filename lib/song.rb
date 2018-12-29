class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name, artist, genre)
    @name =  name 
    @genre = genre
    @artist =  artist
    artist.songs << self
    genre.songs << self 
    @@all << self 
    
    if artist.genres.include?(genre) != true 
      artist.genres << genre 
      genre.artists << artist
    end
    
  end
  
  def Song.all 
    @@all 
  end 
  
end
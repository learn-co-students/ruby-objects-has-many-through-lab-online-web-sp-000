
class Song 
  #direct: songs have a direct relationship with the artist and a direct relationship with the genre
  #indirect: by nature, and to simply everything, songs are connecting points between genres and artists. 
 attr_accessor :name, :artist, :genre 
 
 @@all = []
 
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist
   @genre = genre 
   @@all << self 
 end 

def self.all
  @@all
end 

end 
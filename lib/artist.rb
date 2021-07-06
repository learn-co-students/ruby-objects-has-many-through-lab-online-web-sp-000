require "pry"
class Artist 
  #DIRECT: relationship with song 
  #INDIRECT: relationship with genre through song 
  @@all = []
  
 attr_reader :name
 
 def initialize(name)
   @name = name 
   @@all << self 
 end 
 
 def new_song(name, genre)
   name = Song.new(name, self, genre)
 end 
 
 def songs
   Song.all.select do |song| 
     song.artist == self
   end 
 end 
 
 def genres 
   artist_genres = [] 
    Song.all.each do |song| 
     song.artist == self 
      artist_genres << song.genre 
   end 
   artist_genres
 end 
 
 def self.all 
   @@all 
 end 
 
 end 
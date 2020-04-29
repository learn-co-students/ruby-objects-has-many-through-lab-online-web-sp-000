require 'pry'
class Artist 
  
  attr_accessor :name, :genre 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def songs
    Song.all.select{|song| song.artist == self}
  end 
  
  def new_song(song, genre)
    newsong = Song.new(name, self, genre)
    newsong
  end 

  def genres
    songs.map{|x| x.genre}
  end
  
end 
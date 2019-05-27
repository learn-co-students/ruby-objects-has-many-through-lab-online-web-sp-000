require "pry"

class Artist 
  attr_reader :name 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
    @genres = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre) 
    song = Song.new(name, self, genre) 
  end
  def songs 
    Song.all.select do |s| 
      s.artist == self 
    end 
  end 
  def genres 
    results = []
    songs.each do |s| 
      results << s.genre 
    end 
    results
  end 
end 
require "pry"
class Artist
  attr_accessor :name, :genre, :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    @genres = []
    @songs = []
    @@all << self
  end
  
  def new_song(name, genre)
    song=Song.new(name, self, genre)
    @songs << song
    song
  end

  
def songs
  @songs 
end

def genres
    self.songs.collect {|song| song.genre}
  end
  
  def self.all
    @@all
  end
  
end
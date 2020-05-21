require 'pry'
require_relative 'genre'
require_relative 'song'
class Artist 
    attr_accessor :name, :genre, :song
  @@all = []
  
  def initialize(name)
    @name = name
    @genre = genre
    @song = song
  @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
  name = Song.new(name, genre)
  song.artist == self
  end 

  def songs 
    Song.all.select do |song|
    song.artist == self
  end
  end 
  
  def genres 
    Song.all.map do |song|
      song.genre
    end
  end 
  
end 
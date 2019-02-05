require "pry"
class Artist 
  attr_accessor :name, :genre, :artist
  @@all = []
  def initialize(name)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end 
  def self.all
    @@all 
  end 
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    # new_song.artist = self
  end 
  def songs #do this method and it will clear up #new_song nil error; #songs has many songs
    Song.all.select do |song|
      song.artist == self
    end
  end 
  def genres #genres has many genres, through songs
    self.songs.map do |song|
      song.genre
    end
  end
end 
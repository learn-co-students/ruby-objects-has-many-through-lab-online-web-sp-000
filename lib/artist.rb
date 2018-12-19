require 'pry'
class Artist
   attr_accessor :name, :songs, :artist
   @@all = []


   def initialize(name)
     @name = name
     @songs = []
     @@all << self
   end

   def self.all
     @@all
   end

   def self.create
     song = Song.create
     song.name = name
     song
   end

   def new_song(name, genre)
     song =  Song.new(name, genre, self)
   end


  def songs
    Song.all.select do |song|
      song.Artist == self
      song
    end
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end

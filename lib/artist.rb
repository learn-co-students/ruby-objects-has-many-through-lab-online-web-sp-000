require 'pry'
class Artist
   attr_accessor :name, :songs, :artists
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
    song = self.new
    song.save
    song
   end

   def new_song(name, genre)
     song = Song.create
     song.name = name
     @genre << song
     song.artist = self
     song
   end

   def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end

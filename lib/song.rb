class Song
 attr_accessor :name, :artist, :genre

   @@all_song = []

   def initialize(name="", artist="", genre="")
    @name = name
    @artist = artist
    @genre = genre
    @@all_song << self
  end

   def self.all
    @@all_song
  end

   def artist
    @artist
  end 
end
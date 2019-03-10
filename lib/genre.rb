class Genre
attr_reader :name, :genre
  attr_accessor :song

  @@all_genre = []
  
   def initialize(name)
    @name = name
    @@all_genre << self
  end

   def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

   def artists
    Song.all.map do |song|
      song.artist
    end
  end
  
  
def self.all
  @@all_genre
end
end
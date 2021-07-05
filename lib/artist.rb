class Artist
  
attr_accessor :name, :artist, :genre

   @@all_artist=[]

   def initialize(name)
    @name = name
    @@all_artist << self
  end

   def self.all
    @@all_artist
  end

   def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
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
class Artist
  
  attr_accessor :name, :song, :genres
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    artist_songs = [ ]
    artist_name = self.name
    Song.all.each do |song|
      if song.artist.name == artist_name
        artist_songs << song
      end
    end
    artist_songs
  end
  
  def new_song(name, genre)
   Song.new(name, self, genre)
  end
  
  def genres
    value = [ ]
    Song.all.each do |song|
      if song.artist.name == self.name
        value << song.genre
      end
    end
    value
  end
  
end
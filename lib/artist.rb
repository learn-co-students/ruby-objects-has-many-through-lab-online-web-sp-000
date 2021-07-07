class Artist 
  
  @@all = []
  
  attr_reader :name
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end
  
  def songs
    Song.all.select{ |song| song.artist == self }
  end
  
  def genres
    self.songs.collect{ |artist_songs| artist_songs.genre } 
  end
  
  def new_song(song_name, song_genre)
    song = Song.new(song_name, self, song_genre)
  end
  
  def self.all
    @@all
  end
end
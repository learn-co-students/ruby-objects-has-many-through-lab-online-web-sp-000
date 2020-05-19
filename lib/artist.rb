class Artist
  attr_accessor :name
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(song_name, genre)
    song_name.artist = self
  end
end
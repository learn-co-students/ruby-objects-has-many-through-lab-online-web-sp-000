class Genre
  attr_accessor :name, :song, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @song = song
    @@all << self
  end
  
def songs
    @songs
  end
  def artists
    @songs.collect {|song| song.artist}
  end
  
  def self.all
    @@all
  end
end
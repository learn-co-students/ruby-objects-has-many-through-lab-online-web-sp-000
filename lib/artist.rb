class Artist
  
  @@all = [] 

  
  attr_accessor :name, :song_name
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres =  []
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def new_song(song_name, genre)
      Song.new(song_name, self, genre)
  end
  
  def genres
    songs.collect {|x| x.genre}
  end
  
end
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    self.name = name
    @@all << self
  end
  
  def new_song(song_title)
    song = Song.new(song_title)
  end
  
  def self.all
    @@all
  end
end
class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
    @@all << self
  end
  
  def new_song(song_title, genre)
    song = Song.new(song_title, self, genre)
    self.songs << song
  end
  
  def self.all
    @@all
  end
end
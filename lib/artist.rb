class Artist
  attr_accessor :name, :songs, :genres
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []
    @@all << self
  end
  
  def new_song(song_title, genre)
    song = Song.new(song_title, self, genre)
  end
  
  def self.all
    @@all
  end
end
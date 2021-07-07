class Genre
  attr_reader :name#, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    #@songs = []
    @@all << self
  end
  
  def songs
    Song.all.select { |song| song.genre == self }
  end  
  
  def artists
    songs.map { |song| song.artist }
  end
  
  def self.all
    @@all
  end
  
end
class Song
  attr_accessor :name, :artist, :genre
  @@all= []
def initialize(name, artist, genre)
    @name = name
    @genre =  genre
    @@all<<self
  end
  def self.all
    @@all
end

  def genre
  end

  def artist
  self.artist_name.name
  end
end

class Song
  attr_reader :name, :genre, :artist
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @@all<< self
    @artist = artist
  end


  def self.all
    @@all
  end


end

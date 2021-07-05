class Song
  attr_accessor :name, :artist, :genre      #Class Song BELONGS TO a genre and

  @@all =  []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all            #knows about all song instances
    return @@all
  end


end

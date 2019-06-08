class Song
  attr_accessor :name, :genre, :artist
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    if !Genre.all.include?(genre)
      @genre = Genre.new(genre)
    else
      @genre = genre
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
end
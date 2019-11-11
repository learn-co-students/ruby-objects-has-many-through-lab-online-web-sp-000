class Song 
  attr_reader :artist, :genre
  attr_accessor :name 
  
  @@all =[]
  
  #A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
end

  
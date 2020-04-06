class Genre
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name, songs)
    @name = name
    @songs = songs
    @@all << self
  end
  
  def self.all
    @@all
  end

end
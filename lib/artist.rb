class Artist
  attr_accessor :name

  @@all = []                  #Class var which knows about all Artist instances
  def initialize(name)
    @name = name
    @@all << self             #Artist instance name (self) is saved to array
  end

  def self.all
    return @@all              #.all knows about all the Arist instances
  end

  def new_song(name, genre)         #creates a new song. Sound should know it belongs to artist

  
end

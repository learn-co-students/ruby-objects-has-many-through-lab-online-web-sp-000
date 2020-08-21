class Artist
  attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, genre)
  Song.new(name, self, genre)
  #what we put in depends what the song class's initailize method ends up looking ike


def self.all
  @@all
end


end

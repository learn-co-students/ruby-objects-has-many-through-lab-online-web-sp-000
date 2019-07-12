class Genre
attr_accessor :name, :song, :artist, :genre
@@all = []

def initialize(name)
  @name = name
  @@all << name
end

def self.all
  @@all
end
end

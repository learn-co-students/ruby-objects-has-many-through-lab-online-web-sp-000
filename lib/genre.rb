class Genre

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @artists =[]
  @@all << self
end

def self.all
  @@all
end

def songs
  @songs
end

def artists
  songs.collect {|x| x.artist}
end

end
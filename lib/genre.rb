class Genre
  @@all = []
attr_accessor :name
def initialize (name)
@name = name
@artists = []
@songs = []
@@all << self
end

def self.all
  @@all
end

def songs
   @songs
 end

 def artists
@artists
 end

end

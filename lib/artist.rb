require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
    @songs = []
  end

def self.all
   @@all
 end




def songs
    @songs.select {|song| song.artist == self}
end

def genres

end
end

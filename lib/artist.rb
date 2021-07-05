class Artist
  attr_accessor :name, :artist#,:genres
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
     Song.all.select{|song|song.artist == self || song.genre == self }
  end
  def new_song(song,genres)

    Song.new(song,self,genres)
end
def genres
  songs.map{|song|song.genre}
end
end

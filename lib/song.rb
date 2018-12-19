class Song
  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@all = []
  end


  def self.all
    @@all
  end

end

class Genre
  attr_accessor :songs, :artists
  attr_reader :name
  @@all = []
  def initialize(genre)
    @name = genre
    @songs = []
    @artists = []
    @@all << self
  end
  def self.all
    @@all
  end
end

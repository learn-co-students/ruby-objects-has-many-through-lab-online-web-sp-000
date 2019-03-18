class Genre
  attr_accessor :genre
  @@all = []

  def initialize(genre)
    @genre = genre
    @@all << self
  end
end

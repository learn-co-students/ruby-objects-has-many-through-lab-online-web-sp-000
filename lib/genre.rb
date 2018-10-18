class Genre
  attr_accessor :name

  @@all = []

  def initialize(genre_name)
    @name = genre_name
    @@all << genre_name
  end

  def self.all
    @@all
  end


end

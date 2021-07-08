class Genre
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    Genre.all << self
  end

  def artists
    Artist.all.select{|artist| artist.genres.include?(self)}
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end
end

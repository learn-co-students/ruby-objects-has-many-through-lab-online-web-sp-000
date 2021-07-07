class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def songs
    Song.all.select do |s|
      s.name
    end
  end
  def self.all
    @@all
  end
  def artists
    Artist.all.select do |a|
      a.name
    end
  end
end

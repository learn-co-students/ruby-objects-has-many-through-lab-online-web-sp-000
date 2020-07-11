class Genre

  attr_reader :name, :genre
  attr_accessor :song

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select{|song|song.genre == self}
  end

  def artists
    Song.all.map{|song| song.artist} 
  end

end

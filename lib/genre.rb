class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.all.collect do |song|
      if song.genre == self
        song.artist
      end
    end
  end

    # class methods
  def self.all
    @@all
  end

end

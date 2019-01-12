class Artist

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist==self}
  end

  def genres
    Song.all.collect do |song|
      if song.artist == self
        song.genre
      end
    end
  end

    # class methods
  def self.all
    @@all
  end

end

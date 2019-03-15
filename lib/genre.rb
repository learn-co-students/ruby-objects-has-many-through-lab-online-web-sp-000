class Genre
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    artist_array = []
    Song.all.each do |song|
      if song.genre == self
        artist_array << song.artist
      end
    end
    artist_array
  end

  def self.all
    @@all
  end
end

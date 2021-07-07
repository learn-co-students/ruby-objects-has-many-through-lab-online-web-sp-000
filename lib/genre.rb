class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # Return all songs associated with this Genre
  def songs
    Song.all.select {|song| song.genre == self}
  end

  # Return all artists associated with this Genre
  def artists
    artists = []
    songs.each do |song|
      artists << song.artist if !artists.include?(song.artist)
    end
    artists
  end

end

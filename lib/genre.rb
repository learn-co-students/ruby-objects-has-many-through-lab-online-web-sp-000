class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|songs| songs.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    genre_list = self.songs

    genre_list.map do |songs|
      songs.artist
    end

  end

end

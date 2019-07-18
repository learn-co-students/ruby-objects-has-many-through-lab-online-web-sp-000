class Genre
  attr_accessor :artist, :songs, :genres
  attr_reader :name
  @@genres = []

  def initialize(name)
    @name = name
    @@genres << self
    @songs = []
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    genre_songs = songs()
    genre_songs.collect do |song|
      song.artist 
    end
  end

  def  self.all
    @@genres
  end

end

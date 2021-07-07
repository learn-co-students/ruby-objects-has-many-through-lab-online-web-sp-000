class Genre
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def new_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
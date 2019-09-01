class Artist
  attr_accessor :name :song :genre 

  def initialize(name)
    @name = name
    @songs = []
  end

  def new_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
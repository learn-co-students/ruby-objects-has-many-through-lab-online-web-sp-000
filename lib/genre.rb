class Genre
  attr_accessor :name

  def initialize(name)
    @name= name
    @songs= []
  end

  def new_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end

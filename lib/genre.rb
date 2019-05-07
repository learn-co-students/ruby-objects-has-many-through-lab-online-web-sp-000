class Genre

  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @song<<song
    song.genre=self
  end

  def songs
    @songs
  end

  def artists
    @song.collect do |song|
      song.artist
    end
  end

end

class Artist
  attr_accessor :name, :songs, :genres

  @@all = []

  def initialize(name)
    @songs = []
    @genres = []
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    @name = name
    @genre = genre
    song = Song.new(name, self, genre)
  end

  def self.all
    @@all
  end


end

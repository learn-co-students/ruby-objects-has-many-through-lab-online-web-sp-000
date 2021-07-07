class Artist
  attr_accessor :songs, :genres
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(title, genre)
    song = Song.new(title, self, genre)
  end
end

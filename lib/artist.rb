class Artist
  attr_reader :name, :songs

  ARTISTS = []
  def self.all
    ARTISTS
  end

  def initialize(name)
    @name = name
    @songs = []
    ARTISTS << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def genres
    @songs.map { |song| song.genre }.uniq
  end
end

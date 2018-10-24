class Song
  attr_accessor :artist
  attr_reader :name, :genre

  SONGS = []
  def self.all
    SONGS
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.add_song(self)
    SONGS << self
  end
end

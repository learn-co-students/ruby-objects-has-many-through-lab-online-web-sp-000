class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(inputName, inputArtist, inputGenre)
    @name = inputName
    @artist = inputArtist
    @artist.add_song(self)
    @genre = inputGenre
    @genre.add_song(self)
    @@all << self
  end

  def self.all
    @@all
  end

end

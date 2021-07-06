class Artist
  attr_accessor :name, :genre, :songs

  @@all = []

  def initialize(name)
      @name = name
      @@all << self
      @songs = []
  end

  def self.all
      @@all
  end

  def new_song(name, genre)
      song = Song.new(name, self, genre)
      song.artist = self
      @songs << song
      song
    end

  def songs
      @songs
  end

  def genres
      @songs.map do |song|
      song.genre
      end
  end
end

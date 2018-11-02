class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = Genre.new(genre) unless Genre.all.include?(genre)
    genre.songs << self
    @@all << self
  end

  def self.all
    @@all
  end

end

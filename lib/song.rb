class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @@all << self
    genres = Genre.all.collect {|g| g.name}
    artists = Artist.all.collect{|a| a.name}
    if genres.include?(genre) == true
      @genre = genre
    else
      @genre = genre
      Genre.new(genre)
    end
    if artists.include?(artist) == true
      @artist = artist
    else
      @artist = artist
      Artist.new(artist)
    end
  end

  def self.all
    @@all
  end

end

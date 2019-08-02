class Song
attr_accessor :title, :artist, :genre
@@all = []

def initialize(title, artist, genre)
  @title = title
  @artist = artist
  @genre = genre
  @@all << self
end

def self.all
    @@all
end

def genres
    @genres = @songs.collect(&:genre)
  end



  def artists
    @artists = @songs.collect(&:artist)
  end

end

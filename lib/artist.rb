class Artist
  attr_accessor :name

  @@all = []                  #Class var which knows about all Artist instances

  def initialize(name)
    @name = name
    @@all << self             #Artist instance name (self) is saved to array
  end

  def self.all
    return @@all              #.all knows about all the Arist instances
  end

  def new_song(name, genre)         #creates a new song. Sound should know it belongs to artist
    Song.new(name, self, genre)      #self here being Artist instance called on Song
  end

  def songs                               #An artist HAS MANY songs
    Song.all.select do |song|                      #Song Class. .all method
      song.artist == self                       #song enumerator, artist method (Song class)  == Artist instance (self)
    end
  end

  def genres                               #HAS MANY: An artist has many genres through its songs
    songs.map {|songs| songs.genre}
    #songs.map(&:genre)
  end
end

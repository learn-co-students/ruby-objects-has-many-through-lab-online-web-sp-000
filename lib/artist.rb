class Artist
  # needa a class variable @@all that begins as empty array
  @@all = []
  attr_accessor :name
  # needa class method .all that lists each artist in the class variable
  # An artist is initialized with a name and is saved in the @@all array
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(name, genre)
    # needs an instance method, #new_song that takes in an argument of a name and genre creates a new song.
    # That song should know that it belongs to the artist.
    Song.new(name, self, genre)
  end
  def songs
    # has many songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def genres
    #has many genres, through songs
    songs.map do |song|
      song.genre
    end
  end
end

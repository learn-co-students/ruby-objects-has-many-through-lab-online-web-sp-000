class Artist

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # def new_song(name, genre)
    # The Artist class needs an instance method,
    #new_song, that takes in an argument of a name
    # and genre creates a new song.

    # That song should know that it belongs to the artist.
  # end

  # def songs
    # The Artist class needs an instance method,
    #songs, that iterates through all songs and
    # finds the songs that belong to that artist.
    # Try using select to achieve this.
  # end

  # def genres
    # collects genres of each song
  # end
end

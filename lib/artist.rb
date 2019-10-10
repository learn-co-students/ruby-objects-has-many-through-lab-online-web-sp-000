class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all # Returns the array of artists.
    @@all
  end

  def songs # Calls our 'Song' class and iterates over it to select the songs equal to the instance of the 'Artist' class.
    Song.all.select {|songs| songs.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre) # We call out 'Song' class to create a new song. We use 'self' to represent our instance of the artist.
  end

  def genres # Iterates over the songs associated with our artist and checks out the genre of each.
    song_list = self.songs

    song_list.map do |songs|
      songs.genre
    end

  end

end

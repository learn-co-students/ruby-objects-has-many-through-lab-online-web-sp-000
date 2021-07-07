class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  # Return all songs associated with this Artist
  def songs
    Song.all.select {|song| song.artist == self}
  end

  # Create a new song associated with that Artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # Return all genres associated with that Artist
  def genres
    genres = []
    songs.each do |song|
      genres << song.genre if !genres.include?(song.genre)
    end
    genres
  end

end

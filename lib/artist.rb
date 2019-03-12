class Artist
  @@all = [] #class variable to keep track of all artists

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    #creates a new song that knows it belongs to the artist
    song = Song.new(name, self, genre)
  end

  def songs
    #iterates through all songs and finds the songs that belong to that artist
    Song.all.select do |song_inst|
      song_inst.artist == self
    end

  end

  def genres
   #iterates over the artists songs (above) and list the genre of each
    self.songs.collect do |artist_songs|
      artist_songs.genre
    end
  end

end

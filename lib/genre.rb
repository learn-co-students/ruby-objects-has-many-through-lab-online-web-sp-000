class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    #iterates through all the songs and finds all the songs that belong to that genre
    Song.all.select do |song_inst|
      song_inst.genre == self
    end
  end

  def artists
    # collects the artists that own each of the songs from above
    self.songs.collect do |artist_songs|
      artist_songs.artist
    end
  end

end

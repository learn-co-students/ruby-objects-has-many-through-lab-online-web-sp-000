class Artist
  attr_accessor :songs, :name
  @@all = []

  def initialize(inputName)
    @name = inputName
    @songs = []
  #  Song.all.each do | selectedSong |
  #    if !(selectedSong.artist == self)
  #      self.add_song(selectedSong)
  #    end
  #  end
    @@all << self
  end

  def new_song(inputName, inputGenre)
    newSong = Song.new(inputName, self, inputGenre)
    self.add_song(newSong)
    return newSong
  end

  def genres
    genreList = []
    @songs.each do | selectedSong |
      genreList << selectedSong.genre
    end
    return genreList
  end

  def add_song(inputSong)
    if !(self.songs.include?(inputSong))
      @songs << inputSong
    end
    return nil
  end

  def self.all
    @@all
  end

end

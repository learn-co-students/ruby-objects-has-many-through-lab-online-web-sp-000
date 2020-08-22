class Genre
  attr_accessor :name, :songs
  @@all = []

  def initialize(inputName)
    @songs = []
#    Song.all.each do | selectedSong |
#      if (selectedSong.genre == self)
#        self.add_song(selectedSong)
#      end
#    end
    @artists = []
#    @songs.each do | selectedSong |
#      self.add_artist(selectedSong.artist)
#    end
    @name = inputName
    @@all << self
  end

  def add_song(inputSong)
    if !(self.songs.include?(inputSong))
      @songs << inputSong
    end
    return nil
  end

  def add_artist(inputArtist)
    if !(self.artists.include?(inputArtist))
      @artists << inputArtist
    end
    return nil
  end

  def self.all
    @@all
  end

  def artists
    rArray = []
    @songs.each do | selectedSong |
      rArray << selectedSong.artist
    end
    return rArray
  end


end

class Genre

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    this_genre_songs = []
    Song.all.each do |song|
      if song.genre == self
        this_genre_songs << song
      end
    end
    this_genre_songs
  end

  def artists
    songs.collect {|song| song.artist}
  end

end

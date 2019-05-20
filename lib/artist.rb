class Artist
  @@all = []

  def initialize(name)
    @name = name
    save << self
  end

  def name
    @name
  end

  def self.all
   @@all  
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def genres
    songs.collect { |song| song.genre }
  end

  private
    def save
      self.class.all
    end

end
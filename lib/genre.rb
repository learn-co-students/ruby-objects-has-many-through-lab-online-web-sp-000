class Genre

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

  def songs
    Song.all.select { |song| song.genre.name == self.name }
  end

  def artists 
    songs.collect { |song| song.artist }
  end


  private
    def save
      self.class.all
    end
end


class Song

  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    save << self
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end

  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
  end

  def self.all
    @@all
  end

  private
    def save
      self.class.all
    end

end
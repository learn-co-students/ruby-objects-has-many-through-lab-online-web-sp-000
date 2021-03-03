class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    all_genres = songs.collect {|song| song.genre}
    all_genres.uniq
  end




end

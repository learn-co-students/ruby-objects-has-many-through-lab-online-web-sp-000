class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    newsong = Song.new(name, self, genre)
  end

  def songs
    collection = Song.all.select{|song| song.artist == self}
    collection
  end

  def genres
    collection = []
    Song.all.select{|song| song.artist == self}.each do |song|
      collection << song.genre
    end
    collection
  end

  def self.all
    @@all
  end

end

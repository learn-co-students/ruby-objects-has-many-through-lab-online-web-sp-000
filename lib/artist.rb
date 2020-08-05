class Artist
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(song, genre) #given a name and genre, creates a new song associated with that artist
    Song.new(name, self, genre)
  end

  def genres
    songs. collect do |song|
      song.genre
    end
  end
end

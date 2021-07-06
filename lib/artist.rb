class Artist 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  @@all = [] 
  def self.all 
    @@all 
  end 
  def new_song(name, genre)
    made_song = Song.new(name, self, genre)
  end 
  def songs 
    Song.all.select  do |item|
      item.artist == self 
    end 
  end
  def genres 
    genres = [] 
    songs.select do |song|
      if !(genres.include?(song.genre))
        genres << song.genre 
      end 
    end 
    genres 
  end 
end 
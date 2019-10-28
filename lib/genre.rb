class Genre 
  
  attr_accessor :name
  
  @@all = []
  
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
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    collected_artists = []
    songs.each do |song|
      collected_artists << song.artist
    end
    return collected_artists
  end

  
end 
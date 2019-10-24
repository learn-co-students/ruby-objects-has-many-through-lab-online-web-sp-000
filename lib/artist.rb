class Artist
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, song_genre)
    Song.new(song_name,self,song_genre)
  end
  
  def songs
  end

  def genre
  end
  
end
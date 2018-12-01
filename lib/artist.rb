
class Artist
  attr_accessor :name, :song
  @@allArtist = []
  
  def initialize(name)
    @name = name
    @song = song
    @@allArtist << self
  end

  def self.all
    @@allArtist
  end

 def new_song(name, genre)
   Song.new(name, self, genre)
 end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.songs.map do |song|
      song.genre
    end
  end
end 
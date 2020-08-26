require "pry"
class Artist
  attr_accessor :name, :song, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def genres
   songs.map do |song| song.genre
   end
 end

end

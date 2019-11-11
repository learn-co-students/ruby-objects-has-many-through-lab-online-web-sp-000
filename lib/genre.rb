class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all { |song| song.genre == self }
  end

#The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists
#tags.map(&:name) is sort from of tags.map{|tag| tag.name}
    #songs.map(&:artist)
    songs.map do |song|
      song.artist
    end
  end

  def add_song(song)
    songs << song
  end
end
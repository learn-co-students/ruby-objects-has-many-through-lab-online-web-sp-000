class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name                      #Genre #name has a name
    @@all <<self
  end

  def self.all                  #.all knows all genre instances
    return @@all
  end

  def songs                 #instance method iterates through all songs & finds songs BELONG TO that genre
    Song.all {|song| song.genre == self}              #Going through Song class @genre instance variable
  end

  def artists
    songs.map(&:artist)
  end
end

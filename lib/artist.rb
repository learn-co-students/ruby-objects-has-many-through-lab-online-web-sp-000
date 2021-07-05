require "pry"
class Artist
  attr_accessor :name, :genres, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



    def new_song(name, genre)
    Song.new(name, self, genre)
    end


      def songs
    #binding.pry
       Song.all.select do |song|
          song.artist == self
          end
        end

  def genres
  #  binding.pry
  songs.collect do |song|
    song.genre
    end
  end


end

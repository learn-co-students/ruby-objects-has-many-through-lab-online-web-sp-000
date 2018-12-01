class Genre
    attr_accessor :name
    @@allGenre = []
    
    def initialize(name)
      @name = name
      @@allGenre << self
    end

    def self.all
        @@allGenre
    end

    def songs
      Song.all.select do|song|
       song.genre == self
      end
    end

    def artists
      Song.all.collect do|each|
        each.artist
      end
    end
 end 
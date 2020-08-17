class Genre
    attr_accessor :name, :artists

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # iterates through all songs and finds the songs that belong to that genre.
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    # iterates over genre's collection of songs & collects artist that owns each song
    def artists
        songs.map do |song|
            song.artist
        end
    end
end

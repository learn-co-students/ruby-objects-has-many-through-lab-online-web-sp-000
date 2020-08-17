require 'pry'
class Artist
    attr_accessor :name, :genre

    # stores all artists
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
    def new_song(name, genre)    
        Song.new(name, self, genre)
    end

    # iterates through all songs and finds the songs that belong to that artist
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    # iterates over that artist's songs and collects the genre of each song
    def genres
        songs.collect do |song|
            song.genre
        end
    end
end
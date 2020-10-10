require "pry"

class Artist
    attr_accessor :name

    @@all = []
    @@genres = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        # binding.pry

        Song.all.select{ |s| s.artist == self}
    end

    def genres
        # binding.pry
        songs.each {|s| @@genres << s.genre }
        @@genres.uniq
    end

end
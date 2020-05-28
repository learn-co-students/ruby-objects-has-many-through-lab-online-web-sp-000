require 'pry'
class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        #binding.pry
        Song.new(name, self, genre)
    end


    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        Song.all.map do |song|
            song.genre
        end
    end

end
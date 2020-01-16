require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        #@genre: genre
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
        
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        genres = []
        #binding.pry
        self.songs.each { |song| genres << song.genre}
        genres
    end

      
end

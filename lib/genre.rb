require 'pry'

class Genre

    attr_accessor :name, :song
    @@all = []
    def initialize(name)
        @name=name
        @song = song
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        artists = []
        Song.all.each do |song|
            if song.genre.name == self.name 
                artists << song.artist
            end
            
        end
        artists
    end

    
end
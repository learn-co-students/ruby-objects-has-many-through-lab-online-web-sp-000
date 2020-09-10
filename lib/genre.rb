require "pry"

class Genre


    attr_accessor :name, :artist, :songs
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, artist, self)
      end

    def songs
        Song.all.select {|song| song.genre == self}
       end
#binding.pry
       def artists
        songs.collect {|song| song.artist}
    end
end

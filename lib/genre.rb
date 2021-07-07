class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        songs = Song.all.select {|song| song.genre == self}
        songs
    end

    def artists
        Song.all.map do |song|
            song.artist
        end
    end


end
class Genre

    attr_accessor :name, :artist, :song
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
        self.songs.each do |song|
            artists << song.artist
        end
    end

    
end
class Artist
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
        Song.all.select {|song| song.artist == self}
    end

    def genres
        # songs.map {|song| song.genre}
        songs.map(&:genre)
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        # song.artist = self
        # song.genre = genre
        # song
    end

end
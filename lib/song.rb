class Song

    attr_reader :artist, :genre

    @@all = []

    def initialize(title, artist, genre)
        @artist = artist
        @genre = genre
        artist.songs << self
        @@all << self

    end

    def self.all
        @@all
    end

end
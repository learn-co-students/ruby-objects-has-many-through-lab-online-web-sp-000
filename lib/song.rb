class Song
    @@all = []
    attr_reader :name
    attr_accessor :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @@all << self
        @artist = artist
        @genre = genre
    end
    def self.all
        @@all
    end
end
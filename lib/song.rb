class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@all << self
    end
end
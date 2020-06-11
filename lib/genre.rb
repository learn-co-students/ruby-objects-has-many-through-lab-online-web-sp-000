class Genre
    @@all = []
    attr_reader :name
    attr_accessor :artists
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select {|song| song.genre == self}
    end
    def artists
        self.songs.collect {|song| song.artist}.uniq
    end
end
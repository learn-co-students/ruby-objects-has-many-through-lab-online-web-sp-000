class Artist
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_song(name, genre)
        song = Song.new(name, self, genre)
        
    end
    def songs
        Song.all.select {|song| song.artist.name == self.name}
    end
    def genres
        self.songs.collect {|song| song.genre}.uniq
    end
end
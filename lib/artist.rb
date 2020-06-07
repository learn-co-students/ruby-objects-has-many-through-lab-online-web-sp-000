class Artist
#Artists has many genre through its songs
#Each song has an artist, and artists can have many songs
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre)
        new_song = Song.new(song_name, self, genre)
    end

    def songs
        #returns an array of songs where the artist matches self
        Song.all.select {|song| song.artist == self}
    end

    def genres
        #goes through the array of songs where the artist matches self and returns the song genre
        self.songs.collect {|song| song.genre}
    end

end
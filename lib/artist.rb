class Artist
    attr_accessor
    @@all = []
    def initalize(name)
        @name = name
        @@all << all

    end

    def new_song(name)
        new_song_object = Song.new(name)
        new_song_object.artist = self
    end

    def songs
        self.all.select do |song|
            song.artist ==self
        end

    end

    


    def self.all
        @@all
    end


end

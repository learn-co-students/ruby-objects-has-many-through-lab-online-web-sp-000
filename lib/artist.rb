class Artist

    attr_accessor :name

    @@all = [] 

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def songs
        Song.all.select do |song|
          song.artist == self
        end
    end

    def genres
        songs.collect do |song|
            song.genre
        end
    end
end

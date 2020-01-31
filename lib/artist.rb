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
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    #given a name and genre, creates a new song asso w artist

    def genres
       songs.map(&:genre)
    end



end
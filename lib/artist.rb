def artist

    @@all = []

    def initialize()
        @@all << self
    end

    def self.all
        @all
    end

    def new_song

    end

end
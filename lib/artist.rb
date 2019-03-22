class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def new_song (name, genre)
      Song.new(name, self, genre)
    end

    def songs
       Song.all.select {|thing| thing.artist == self}
    end

    def genres
        songs.map {|thing| thing.genre}
    end

end

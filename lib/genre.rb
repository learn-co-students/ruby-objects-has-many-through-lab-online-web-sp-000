class Genre
    @@all = []
    attr_accessor :name, :song, :artist
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def songs
        Song.all.select do |owner| 
            owner.genre == self
        end
    end
  
    def artists
        songs.collect do |owner| 
            owner.artist
        end
    end
end
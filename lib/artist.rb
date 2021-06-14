#defines an artist who has many: songs


class Artist

  attr_accessor :name, :genre
  @@all = []

    def initialize (name)
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
      Song.all.select do |title|
        title.artist == self
      end
    end



    def genres
        songs.map do |song|
          song.genre
        end
      end


end

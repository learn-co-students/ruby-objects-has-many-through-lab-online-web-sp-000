class Artist
attr_accessor :song, :genre, :name, :artist
@@all = []


def initialize(name)
  @name = name
  @@all << name
end

def new_song(name, genre)
   Song.new(name, self, genre)

end
def songs
  Song.all.select do |song|
    song.artist == self
  end
end
# def genres
#   Genre.all.select do |genre|
#     genre.artist == self
#   end
# end
def self.all
  @@all
end





end

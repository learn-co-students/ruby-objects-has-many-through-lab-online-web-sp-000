class  Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self

  end
   def self.all
     @@all
   end
   def self.songs

   end
   def self.artist
   end
end

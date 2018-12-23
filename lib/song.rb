class Song
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    self.name = name
    @@all << self
  end
end
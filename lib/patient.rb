class Patient
  @@all = []

  attr_accessor :name, :doctor

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

end

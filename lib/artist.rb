require "pry"

class Artist
  attr_accessor :name, :genre
  @@all=[]

  def initialize (name)
    @name = name
    @@all << name
  end

  
  def self.all
    @@all
  end
end

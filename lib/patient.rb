require 'pry'
require_relative 'artist'
require_relative 'genre'
class Song 
  attr_accessor :name, :date, :doctor
  @@all = []
  
  def initialize(name, doctor, appointment=nil)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
end 
# require_relative 'artist.rb'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#check this:
  def artist_name
    if self.artist || nil   #robust, not easily breakable
    self.artist.name
    end
  end

  def self.all
    @@all
  end

end

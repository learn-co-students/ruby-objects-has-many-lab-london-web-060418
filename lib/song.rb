class Song

  @@all = []

  attr_accessor :name, :genre, :artist

  def initialize(name = "")
    @name = name

    @@all << self
  end

  def artist_name
    return artist ? artist.name : nil
  end


  def self.all
    return @@all
  end


end

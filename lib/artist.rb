# require_relative 'song.rb'

class Artist

  attr_accessor :name

  @@all = []  #all artists

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def songs
    #Song.all.select {|song| song.artist == self}
    Song.all.each do |song|
      song.artist == self
      #song.artist
    end
  end

  def self.song_count
    Song.all.count
  end

end

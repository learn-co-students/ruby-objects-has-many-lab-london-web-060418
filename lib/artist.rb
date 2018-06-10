require 'pry'
require_relative 'song.rb'

class Artist

  attr_accessor :name

  # @@All_Artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
    # Song.all << new_song
  end

  def add_song_by_name(new_song)
    song = Song.new(new_song)
    # binding.pry
    add_song(song)

  end

  def self.song_count
    Song.all.count
  end

  # binding.pry
  # true



end

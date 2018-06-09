require 'pry'
require 'song'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_title)
    new_song = Song.new(song_title)
    self.add_song(new_song)
  end


  def self.song_count
    total = 0
    all_artists = @@all
    all_artists.each do |artist|
      total += artist.songs.length
    end
    total
  end

end

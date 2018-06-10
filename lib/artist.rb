class Artist
    attr_accessor :name
    attr_reader :songs

    @@all = []
    def initialize(name)
      @name = name
      @@all << self
      @songs = []
    end

    def add_song(song)
      @songs << song
      song.artist = self
    end

    #Takes in an argument of a song name, creates a
    #new song with it and associates the song and artistß
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      @songs << song
      song.artist = self
    end

    def self.song_count
      count = 0
      @@all.each do |artist|
        count += artist.songs.length
      end
      count
    end
end
